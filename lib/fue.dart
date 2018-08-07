
library fue;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'wrap.dart';
import 'src/fue.dart';

import 'src/fue_store.dart';

import 'src/global.dart';


class FueWidget extends StatefulWidget{

  final fue;

  const FueWidget({Key key, this.fue}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return fue.createState();
  }

}

abstract class Fue {

  static void component(String s, Function(dynamic args) factory) {
    mapWidgets[s] = new WigetCreateInfo(factory);
  }

  var key;
  String get template => "";
  List get props => [];
  String get style => "";

  Map<String, Object> get data => {};

  get $data => state.$data;
  get $global => Global.instance;
  get $ => state.$;

  var _widget;
  get widget => _widget ??= new FueWidget(fue:this);

  var state;

  Fue({ Key key });

  createState(){
    return state = new FueState<FueWidget>(()=>template, data, ()=>style, props);
  }
}
