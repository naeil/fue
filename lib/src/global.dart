
import 'dart:async';

import 'scriptable.dart';

class Global extends Scriptable{

  static var instance = new Global();

  static var timeMap = {};

  var _methods;
  get members => _methods ??= {
    "version" : [()=>this.version, (v){assert(false);} ],
    "setTimeout" : setTimeout
  };

  var version = "0.0.0.1";

  clearTimeout(int id){
    if(!timeMap.containsKey(id))
      return;

    timeMap.remove(id).cancel();
  }

  setTimeout(cb, [delay = 0]){

    var timer;
    timer = new Timer(new Duration(milliseconds: delay), (){
      cb();
      timeMap.remove(timer.hashCode);
    });

    timeMap[timer.hashCode] = timer;

    return timer.hashCode;
  }
}