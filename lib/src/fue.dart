
library fue;

import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as dom_parser;

import '../wrap.dart';
import 'watcher.dart';

import 'global.dart';

import 'fue_theme_data.dart';

import '../fue.dart';

import 'scriptable.dart';
import 'package:fue_style/fue_style.dart';


import 'package:html/src/treebuilder.dart' as dom;
import 'package:html/src/token.dart';

part 'ast.dart';
part 'compiler.dart';
part 'context.dart';
part 'parser.dart';
part 'icons.dart';
part "style.dart";

part 'dom/element.dart';
part 'dom/document.dart';
part 'dom/treebuilder.dart';

class _CtxImpl extends Context{



  static _CtxImpl _global;
  Watcher _values;

  @override
  get values => _values;

  _CtxImpl(v, [Context parent]){
    this._values = Watcher.get(v);
    this.parent = parent;
  }

  @override
  Context createChildContext(values){
    return new _CtxImpl(values, this);
  }

  addListener(name, cb){
    _values.addListener(name, cb);
    if(parent != null){
      (parent as dynamic).addListener(name, cb);
    }
  }
}

class FueState<T extends StatefulWidget> extends State<T> with Context{

  static var _global = new _CtxImpl({
    "print" : (v)=>print(v.toString()),
    "Icons" : new IconFactory(),
    "global" : Global.instance,
    "setTimeout" : Global.instance.setTimeout
  });

  FueCompiler compiler = new FueCompiler();
  var widgets = <dom.Element, Object>{};

  @override
  Widget build(BuildContext context) {

    ready = true;

    ui.window;


    var theme = Theme.of(context);
    if($data['theme'] == null || $data['theme'].data != theme){
      $data.target['theme'] = new FueThemeData(theme);
    }

    var mq = MediaQuery.of(context);

    var rtn = compiler.compile(this, template(), style()).build(context);

    var z = context.findRenderObject();


    return rtn;
  }

  var template;
  MapWatcher $data;
  var ready = false;
  var style;

  Builder builder;

  $(q){
    return builder.root.querySelector(q);
  }

  FueState(this.template, data, this.style, props){
    parent = _global;
    $data = Watcher.get(data);

    this.builder = compiler.compile(this, template(), style());

  }

  @override
  get values => $data;

  @override
  Context createChildContext(values){
    return new _CtxImpl(values, this);
  }

  addListener(name, cb){
    $data.addListener(name, cb);
  }


  var timer;

  update() async {

    if(!ready) {
      print("update ready");
      new Timer(new Duration(milliseconds: 10), ()=>this.update);
      return ;
    }

    if(timer != null){
      return;
    }

    timer = new Timer(new Duration(milliseconds: 0), () => setState(() {
      print("update ok");
      timer = null;
    }));

  }

}


class Builder{

  int code;
  FueState fue;
  Element root;

  Builder({this.code, this.fue, this.root}){

  }

  Widget build(BuildContext context){
    root.compile();
    return root.widget;
  }
}

class FueCompiler{


  Builder cache;

  compile(FueState fue, String src, String style){

    if(cache != null && cache.code == src.hashCode ^ style.hashCode){
      return cache;
    }

    return cache = FueCompiler()._compile(fue, src, style);
  }


  _compile(FueState fue, String src, String style){

    var p = new dom_parser.HtmlParser(src, tree:TreeBuilder(fue:fue));

    var document = p.parse() as Document;

    var root = document.body.children[0] as Element;

    root.prepare(fue);

    processStyle(root, style);

    document.applyStyle = applyStyle;

    return new Builder(code: src.hashCode ^ style.hashCode , fue: fue, root:root);
  }

  CssTree<Style> styleTree;

  void applyStyle(Element el){
    var style = styleTree.lookup(el);
    el.style.defaultStyle = style;

    el.style.markTextStyle = style?.markTextStyle ?? false;
    el.style.markContainer = style?.markContainer ?? false;

    el.children.forEach((el)=>applyStyle(el));
  }

  var last_style;
  void processStyle(root, css) {

    if(last_style == css){
      return;
    }

    styleTree = new CssTree<Style>(css, ()=>new Style());

    applyStyle(root);

    last_style = css;
  }

}