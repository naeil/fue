

part of fue;

typedef dynamic create_only_arg([dynamic arg]) ;
typedef dynamic create_with_data(dynamic data, [dynamic arg]) ;
typedef dynamic create_custom_arg(dynamic arg) ;
typedef dynamic create_no_arg() ;


class _EventInfo {
  final String name;
  final int argCnt;
  _EventInfo(this.name, this.argCnt);
}

class _Events{



  static var eventInfo = {
    "tapdown" : new _EventInfo("onTapDown", 1),
    "tapup" : new _EventInfo("onTapUp", 1),
    "tap" : new _EventInfo("onTap", 0),
    "tapcancel" : new _EventInfo("onTapCancel", 0),
    "doubletap" : new _EventInfo("onDoubleTap", 0),
    "longpress" : new _EventInfo("onLongPress", 0),
    "verticaldragdown" : new _EventInfo("onVerticalDragDown", 1),
    "verticaldragstart" : new _EventInfo("onVerticalDragStart", 1),
    "verticaldragupdate" : new _EventInfo("onVerticalDragUpdate", 1),
    "verticaldragend" : new _EventInfo("onVerticalDragEnd", 1),
    "verticaldragcancel" : new _EventInfo("onVerticalDragCancel", 0),
    "horizontaldragdown" : new _EventInfo("onHorizontalDragDown", 1),
    "horizontaldragstart" : new _EventInfo("onHorizontalDragStart", 1),
    "horizontaldragupdate" : new _EventInfo("onHorizontalDragUpdate", 1),
    "horizontaldragend" : new _EventInfo("onHorizontalDragEnd", 1),
    "horizontaldragcancel" : new _EventInfo("onHorizontalDragCancel", 0),
    "pandown" : new _EventInfo("onPanDown", 1),
    "panstart" : new _EventInfo("onPanStart", 1),
    "panupdate" : new _EventInfo("onPanUpdate", 1),
    "panend" : new _EventInfo("onPanEnd", 1),
    "pancancel" : new _EventInfo("onPanCancel", 0),
    "scalestart" : new _EventInfo("onScaleStart", 1),
    "scaleupdate" : new _EventInfo("onScaleUpdate", 1),
    "scaleend" : new _EventInfo("onScaleEnd", 1),
  };

  var data = <String, Object> {
    'child' : null
  };
}

void insert_before (el, target) {
  target.parentNode.insertBefore(el, target);
}

void insert_after(dom.Node el, dom.Node target){

  var next = next_sibling(target);

  if (next != null) {
    target.parentNode.insertBefore(el, next);
  } else {
    target.parentNode.append(el);
  }
}

dom.Node next_sibling(dom.Node el, [int n = 0]){

  var nodes = el.parentNode.nodes;
  var idx = nodes.indexOf(el);

  var next = (idx > 0 && (idx + 1) < nodes.length) ? nodes[idx + 1 + n] : null;

  return next;
}


class Element extends dom.Element with Scriptable, CSSElement{

  var widget;
  _Events events = new _Events();
  Function() update;
  Context ctx;
  Style style;
  MapWatcher attrs;
  bool vIf = true;

  Document _document;
  Document get document {

    if(_document != null){
      _document;
    }

    dynamic o = this;
    while(o.parentNode != null){
      o = o.parentNode;
    }

    return _document = o as Document;
  }

  get tagName { return super.localName; }

  Element get parent { return super.parent as Element; }
  Element get previousElementSibling { return super.previousElementSibling as Element; }
  dom.NodeList get nodes { return super.nodes; }

  var _members;
  @override
  get members => _members ??= {
    "html" : [()=>this.innerHtml, (v){this.innerHtml=v.toString(); this.reset(); this.update(); }],
  };

  Element(String localName, LinkedHashMap<dynamic, String> attributes) : super.tag(localName){
    
    style = new Style(
      parentFactory: ()=>parent != null ? parent.style : null
    );

    

    this.attributes = attributes;
    this.attrs = new MapWatcher(this.attributes);

  }

  bool _lockRedraw = false;
  void lockRedraw(bool bLock){
    _lockRedraw = bLock;

    if(_lockRedraw == false)
      update();
  }

  void redraw(){
    if(_lockRedraw || update == null)
      return;

    reset();
    update();
  }

  var remove_attrs = [];

  var builderItem;
  var buildTarget;
  ForExpression builderExpression;

  void prepare(Context ctx, [initVariable]){

    ctx = this.ctx = ctx.createChildContext(initVariable ?? {});

    ctx.setThis(this);

    if(attributes.containsKey("v-builder")){
      var src = attributes["v-builder"];
      attributes.remove("v-builder");

      var parse = Parser.parseForExpression(src);
      builderItem = this.children[0] as Element;
      builderExpression = parse;
      buildTarget = Compiler.compile(builderExpression.target)(ctx) as ListWatcher;

      buildTarget.addListener("length", (a,b){
        reset();
        update();
      });

      var parent = this.parent;
      var argName = this.attributes["v-name"];

      this.attributes["v-name"] = "__builder_temp";

      var element_head = new dom.Comment(""), element_tail = new dom.Comment("");

      this.parent.createWidgetArgs[argName] = (a, idx){

        
        var cnt = 0;
        var headIdx = parent.nodes.indexOf(element_head);
        var tailIdx = parent.nodes.indexOf(element_tail);
        var childIdx = headIdx + idx + 1;

        if(childIdx >= tailIdx){
          return null;
        }

        return (parent.nodes[childIdx] as Element).widget as Widget;


        // var item = buildTarget as List;

        // if(idx >= item.length){
        //   return null;
        // }

        // var child = this.clone(true);
        // child.parentNode = parent;

        // var value = {
        //   builderExpression.value : item[idx]
        // };

        // if(builderExpression.index.isNotEmpty){
        //   value[builderExpression.index] = idx;
        // }

        // child.prepare(ctx, value);
        // var wiget = child.compile();

        // return wiget as Widget;
      };

      insert_before(element_head, this);
      insert_after(element_tail, this);
      
      this.remove();

      processForExpression(buildTarget, element_head, element_tail, ctx, parse);

      return;
    }


    if(attributes.containsKey('v-for')){
      var src = attributes["v-for"];
      remove_attrs.add("v-for");
      var parse = Parser.parseForExpression(src);

      if(parse == null)
        throw "v-for parse error.";

      if(parse != null && parse is ForExpression){

        var for_fnc = Compiler.compile(parse.target);
        var target = for_fnc(ctx) as ListWatcher;

        attributes.remove("v-for");

        var element_head = new dom.Comment(""), element_tail = new dom.Comment("");

        insert_before(element_head, this);
        insert_after(element_tail, this);

        this.remove();

        processForExpression(target, element_head, element_tail, ctx, parse);

        return;
      }
    }

    if(attributes.containsKey('id')) {
      var id = attributes["id"];
      createWidgetArgs["key"] = new Key(id);
    }

    if(attributes.containsKey('v-if')) {
      var vIf = attributes["v-if"];
      remove_attrs.add("v-if");
      compileAttribute(ctx, vIf, (fnc){
        this.vIf = Compiler.toBool(fnc(ctx));
      });

      this.vIf;
    }

    if(attributes.containsKey('v-html')){
      var vHtml = attributes["v-html"];
      remove_attrs.add("v-html");

      compileAttribute(ctx, vHtml, (fnc){
        this.innerHtml = fnc(ctx).toString();
      });
    }else{
      this.nodes.forEach((dom.Node node){
        if(!(node is dom.Text) || parent == null)
          return;

        if (node.text.indexOf("{{") == -1) {
        } else {
          compileTextNode(ctx, node.text.trim(), (fnc) {
            node.text = fnc(ctx).toString();
          });
        }
        return;

//        if(parent.localName == "text"){
//          if (node.text.indexOf("{{") == -1) {
//          } else {
//            compileTextNode(ctx, node.text, (fnc) {
//              node.text = fnc(ctx).toString();
//            });
//          }
//        }else {
//          var newel = new _Element("Text", attributes);
//
//          if (node.text.indexOf("{{") == -1) {
//            newel.text = node.text;
//          } else {
//            compileTextNode(ctx, node.text, (fnc) {
//              newel.text = fnc(ctx).toString();
//            });
//          }
//
//          node.replaceWith(newel);
//        }
      });
    }

    attributes.forEach((k, v){

      if(k.startsWith(":")) {
        // binding
        var name = k.substring(1);
        remove_attrs.add(k);

        compileAttribute(ctx, v, (fnc) {
          attrs[name] = fnc(ctx).toString();
        });
      }

      if(k.startsWith("v-bind:")) {
        // binding
        var name = k.substring(7);
        remove_attrs.add(k);

        compileAttribute(ctx, v, (fnc) {
          attrs[name] = fnc(ctx).toString();
        });
      }

      if(k.startsWith("@")){
        var info = _Events.eventInfo[k.substring(1).toLowerCase()];
        remove_attrs.add(k);

        if(info == null) {
          if(k == "@initialvalue"){
            var a=0;
          }
          //createWidgetArgs[k.substring(1)] = compileEvent(v)(ctx);
          compileAttribute(ctx, v, (fnc){
            createWidgetArgs[k.substring(1)] = fnc(ctx);
          });
          return;
        }

        var fnc = compileEvent(v);
        var cb = ([ev]){
          var rtn = fnc(ctx);
          if(rtn is Function){
            var body = rtn.toString();
            var argcnt = body.indexOf("()") > -1 ? 0 : body.split(',').length;
            if(argcnt == 1) {
              rtn(ev);
            }else{
              rtn();
            }
          }
        };
        events.data[info.name] = info.argCnt == 0 ? (){
          cb();
        } : (event){
          cb(event);
        };
      }
    });

    if(attributes.containsKey('v-args')) {
      var src = attributes["v-args"];
      remove_attrs.add("v-args");

      compileAttribute(ctx, src, (fnc){
        var args = fnc(ctx);
        if(args is Map){
          createWidgetArgs.addAll(args);
        }
      });
    }

    if(attributes.containsKey("style")){
      style.cssText = attributes["style"];
    }

    this.children.forEach((child){
      (child as Element).prepare(ctx);
    });


    compile_attr_delayed_fncs.forEach((v)=>v());
    remove_attrs.forEach((v)=>attributes.remove(v));

  }

  void processForExpression(ListWatcher target, dom.Node element_head, dom.Node element_tail, Context ctx, ForExpression parse) {

    var for_infos = [];

    update_index(pos, o){
      var idx = pos + 1;
      while(o != null && o != element_tail){

        if(!(o is Element)) {
          o = next_sibling(o);
          continue;
        }

        var el = o as Element;

        if(parse.index.isNotEmpty){
          el.ctx.values[parse.index] = idx;
        }

        document.applyStyle(el);

        o = next_sibling(o);
        idx++;
      }
    }

    target.addListener("added", (pos, count){
      var next = next_sibling(element_head, pos);

      for(var x = 0; x < count; x++){
        var newel = this.clone(true);
        insert_before(newel, next);

        var el_ctx = ctx.createChildContext({});

        if(parse.index.isNotEmpty){
          el_ctx.values[parse.index] = pos + x;
        }

        el_ctx.values[parse.value] = target[pos + x];


        document.applyStyle(newel);

        newel.prepare(el_ctx);
      }

      update_index(pos + count - 1, next);

      reset();
      update();
    });


    target.addListener("removed", (pos, count){
      var next = next_sibling(element_head, pos);

      var start = this.parentNode.nodes.indexOf(element_head);

      update_index(pos + count -2 , next_sibling(next));

      this.parentNode.nodes.removeRange(start + pos + 1, start + pos + count + 1);

      reset();
      update();
    });

    var idx = 0;
    for(var item in target){
      var newel = this.clone(true);

      var el_ctx = ctx.createChildContext({});

      if(parse.index.isNotEmpty){
        el_ctx.values[parse.index] = idx;
      }

      el_ctx.values[parse.value] = item;

      insert_before(newel, element_tail);

      newel.prepare(el_ctx);

      idx++;
    }


  }

  compileEvent(v){
    var parse = Parser.parse(v);
    var fnc = Compiler.compile(parse);

    return fnc;
  }

  var compile_attr_delayed_fncs = [];


  Function(Context) compileAttribute(Context ctx, String src, cb) {
    var parse = Parser.parse(src);
    var fnc = Compiler.compile(parse);

    assert(parse != null, "parse error : " + src);

    if(cb != null) {
      var cb2 = (nv, ov) {
        cb(fnc);
        this.reset();
        update();
      };

      parse.visit((exp) {
        if (exp is Identifier) {
          (ctx as dynamic).addListener(exp.name, cb2);
        } else if (exp is MemberExpression) {
          ctx.clearMemberExpression();
          Compiler.eval(exp, ctx);
          var info = ctx.getLastMemberExpression();

          if(info[0] is Watcher)
            info[0].addListener(info[1], cb2);
        }
      });

      compile_attr_delayed_fncs.add(()=>cb(fnc));
    }

    return fnc;
  }

  Function(Context) compileTextNode(Context ctx, String src, cb) {
    var parse = Parser.parseTemplate(src);
    var fnc = Compiler.compile(parse);

    if(cb != null) {
      var cb2 = (nv, ov) {
        reset();
        cb(fnc);
        update();
      };

      parse.visit((exp) {
        if (exp is Identifier) {
          (ctx as dynamic).addListener(exp.name, cb2);
        } else if (exp is MemberExpression) {
          ctx.clearMemberExpression();
          Compiler.eval(exp, ctx);
          var info = ctx.getLastMemberExpression();

          if(info[0] is Watcher)
            info[0].addListener(info[1], cb2);
        }
      });

      cb(fnc);
    }

    return fnc;
  }


  @override
  Element clone(bool deep) {
    var result = new Element(localName, new LinkedHashMap.from(attributes));
    result.update = update;
    return _clone(result, deep);
  }

  _clone(dom.Node shallowClone, bool deep) {
    if (deep) {
      for (var child in nodes) {
        shallowClone.append(child.clone(true));
      }
    }
    return shallowClone;
  }

  void reset(){
    this.widget = null;
    if(this.parent != null){
      //(this.parent as _Element).widget = null;
      (this.parent as Element).reset();
    }
  }

  var createWidgetArgs = <String, Object>{};

  compile(){

    if(this.widget != null){
      return this.widget;
    }

    style.applyStyle();

    if(localName == "text" && style.textStyle != null){
      createWidgetArgs["style"] = style.textStyle;
    }

    var args =  new HashMap<String, dynamic>(equals: (a, b) => a.toUpperCase() == b.toUpperCase(),
        hashCode: (a) => a.toUpperCase().hashCode);

    args.addAll(createWidgetArgs);


    var data = "";

    if(attributes.containsKey('src')) {
      data = attributes['src'];
    }

    var info = mapWidgets[this.localName];

    var child_name = info.defaultChildArgumentName;
    var isTextElement = this.localName == "text";

    for(var child in this.nodes) {

      if(child.nodeType == dom.Node.TEXT_NODE){

        if(!isTextElement && child_name.isNotEmpty && child.text.trim().length > 0){

          if(child_name.endsWith("[]")){
            var name = child_name.substring(0, child_name.length - 2);
            if(!args.containsKey(name)){
              args[name] = <Widget>[];
            }
            args[name].add(new Text(child.text.trim(), style:style.textStyle));
          }else {
            args[child_name] = new Text(child.text.trim(), style:style.textStyle);
          }
        }

        data += child.text;

        continue;
      }else if(child.nodeType != dom.Node.ELEMENT_NODE){
        continue;
      }

      if(!(child as Element).vIf){
        continue;
      }

      var attrname = child.attributes["v-name"]?.trim();
      var name = attrname ?? info.defaultChildArgumentName;

      var widget = (child as Element).compile();

      var listType = false;

      if(name.endsWith("[]")){
        name = name.substring(0, name.length - 2);
        listType = true;
      }

      if(listType){

        if(!args.containsKey(name)){
          args[name] = <Widget>[];
        }

        (args[name] as List<Widget>).add(widget);

      }else {
        args[name] = widget;
      }

    }

    this.widget = createWidget(this, data.trim(), args??{});

    return this.widget;
  }



  createWidget(Element el, String data, [arg]) {

    var widget = null;
    var tagname = el.localName;

    var fnc = mapWidgets[tagname].genFnc;

    if(fnc is create_with_data){
      widget = fnc(data, arg);
    }else if(fnc is create_only_arg){
      widget = fnc(arg);
    }else if(fnc is create_custom_arg){
      widget = fnc(arg);
    }else if(fnc is create_no_arg){
      widget = fnc();
    }else{
      print(fnc);
      assert(false, "unknown function type;");
    }

    widget = style.wrap(widget);

    if(widget is Fue){
      widget.props.forEach((name) {
        if(this.attributes.containsKey(name))
          widget.$data.target[name] = this.attributes[name];
          this.attrs.addListener(name, (a,b){
            widget.$data[name] = this.attributes[name];
          });
        //print(widget.$data.cbs);
        //print(this.attributes[name]);
      });
    }

    events.data['child'] = widget;

    if(events.data.length > 1){
      return mapWidgets['gesturedetector'].genFnc(events.data);
    }

    return widget;

  }

}
