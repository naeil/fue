import 'dart:core';
import 'dart:math';

import 'scriptable.dart';

typedef void ValueChangeCallback(a, v);

class Watcher {
  static get(target) {
    if (target is Watcher) return target;

    if (target is Map) return MapWatcher(target);

    if (target is List) return ListWatcher(target);

    return target;
  }

  var target;
  Map cbs = <dynamic, List<ValueChangeCallback>>{};

  Watcher(this.target);

  dynamic operator [](dynamic key) {
    return target[key];
  }

  operator []=(dynamic key, dynamic value) {
    var oldvalue = target[key];
    var newvalue = value;

    target[key] = value;

    this.dispatch(key, newvalue, oldvalue);
    this.dispatch("*", key, newvalue);
  }

  void dispatch(key, a, b) {
    if (!this.cbs.containsKey(key)) {
      return;
    }
    for (var cb in this.cbs[key]) {
      cb(a, b);
    }
  }

  void addListener(key, ValueChangeCallback cb) {
    this.cbs[key] ??= <ValueChangeCallback>[];
    this.cbs[key].add(cb);
  }
}

///
/// [ListWatcher]
///
///




class ListWatcher extends Watcher implements List {
  ListWatcher(List target) : super(target) {
    for (var i = 0; i < target.length; i++) {
      target[i] = Watcher.get(target[i]);
    }
  }

  var _methods;

  Map get methods =>
      _methods ??= {
        "length": [() => this.length, (v){this.length = v;}],
        "reversed": [() => this.reversed],
        "first": [() => this.first],
        "isEmpty": [() => this.isEmpty],
        "isNotEmpty": [() => this.isNotEmpty],
        "iterator ": [() => this.iterator],
        "last": [() => this.last],
        "single": [() => this.single],

        "add": this.add,
        "addAll": this.addAll,
        "asMap": this.asMap,
        "clear": this.clear,
        "fillRange": this.fillRange,
        "getRange": this.getRange,
        "indexOf": this.indexOf,
        "insert": this.insert,
        "insertAll": this.insertAll,
        "lastIndexOf": this.lastIndexOf,
        "remove": this.remove,
        "removeAt": this.removeAt,
        "removeLast": this.removeLast,
        "removeRange": this.removeRange,
        "removeWhere": this.removeWhere,
        "replaceRange": this.replaceRange,
        "retainWhere": this.retainWhere,
        "setAll": this.setAll,
        "setRange": this.setRange,
        "shuffle": this.shuffle,
        "sort": this.sort,
        "sublist": this.sublist,
        "any": this.any,
        "contains": this.contains,
        "elementAt": this.elementAt,
        "every": this.every,
        "expand": this.expand,
        "firstWhere": this.firstWhere,
        "fold": this.fold,
        "forEach": this.forEach,
        "join": this.join,
        "lastWhere": this.lastWhere,
        "map": this.map,
        "noSuchMethod": this.noSuchMethod,
        "reduce": this.reduce,
        "singleWhere": this.singleWhere,
        "skip": this.skip,
        "skipWhile": this.skipWhile,
        "take": this.take,
        "takeWhile": this.takeWhile,
        "toList": this.toList,
        "toSet": this.toSet,
        "where": this.where,
      };

  @override
  dynamic operator [](dynamic key) {

    if (key is String) {
      var fnc = methods[key];

      if (fnc is List) {
        return fnc[0]();
      } else {
        return fnc;
      }
    }

    return target[key];
  }

  @override
  operator []=(dynamic key, dynamic value) {
    if (key is String) {
      var fnc = methods[key];
      if (fnc is List) {
        return fnc[1](value);
      }
    }

    var oldvalue = target[key];
    var newvalue = value;

    target[key] = value;

    this.dispatch(key, newvalue, oldvalue);
    this.dispatch("*", newvalue, oldvalue);
  }

  void reduceItems(start, length) {
    for (var i = start, len = start + length; i < len; i++) {
      target[i] = Watcher.get(target[i]);
    }
  }

  @override
  get first => target.first;

  @override
  set first(v) => target.first = v;

  @override
  get last => target.last;

  @override
  set last(v) => target.last = v;

  @override
  int get length => target.length;

  @override
  set length(int v) {
    this.removeRange(v, length);
  }

  @override
  List operator +(List other) {
    return target + other;
  }

  @override
  void add(value) {
    var current_length = target.length;

    target.add(value);

    this.reduceItems(current_length, 1);

    dispatch("added", current_length, 1);

    dispatch("length", this.length, null);
  }

  @override
  void addAll(Iterable iterable) {
    var current_length = target.length;

    target.addAll(iterable);

    this.reduceItems(current_length, iterable.length);

    dispatch("added", current_length, iterable.length);

    dispatch("length", this.length, null);
  }

  @override
  bool any(bool Function(dynamic) test) {
    return target.any(test);
  }

  @override
  Map<int, dynamic> asMap() {
    return target.asMpa();
  }

  @override
  List<R> cast<R>() {
    return target.cast<R>();
  }

  @override
  void clear() {
    return target.clear();
  }

  @override
  bool contains(Object element) {
    return target.contains(element);
  }

  @override
  elementAt(int index) {
    return target.elementAt(index);
  }

  @override
  bool every(bool Function(dynamic) test) {
    return target.every(test);
  }

  @override
  Iterable<T> expand<T>(Iterable<T> Function(dynamic) f) {
    return target.expand<T>(f);
  }

  @override
  void fillRange(int start, int end, [fillValue]) {
    target.fillRange(start, end, fillValue);

    this.reduceItems(start, end - start);

    for (var i = start, len = end; i < len; i++) {
      dispatch("added", i, this[i]);
    }

    dispatch("length", length, null);
  }

  @override
  firstWhere(bool Function(dynamic) test, {Function() orElse}) {
    return target.firstWhere(test, orElse);
  }

  @override
  T fold<T>(T initialValue, T Function(T previousValue, dynamic) combine) {
    return target.fold<T>(initialValue, combine);
  }

  @override
  Iterable followedBy(Iterable other) {
    return target.followedBy(other);
  }

  @override
  void forEach(void Function(dynamic) f) {
    return target.forEach(f);
  }

  @override
  Iterable getRange(int start, int end) {
    return target.getRange(start, end);
  }

  @override
  int indexOf(element, [int start = 0]) {
    return target.indexOf(element, start);
  }

  @override
  int indexWhere(bool Function(dynamic) test, [int start = 0]) {
    return target.indexWhere(test, start);
  }

  @override
  void insert(int index, element) {
    target.insert(index, element);

    this.reduceItems(index, 1);

    dispatch("added", index, 1);

    dispatch("length", length, null);
  }

  @override
  void insertAll(int index, Iterable iterable) {
    target.insertAll(index, iterable);

    this.reduceItems(index, iterable.length);

    dispatch("added", index, iterable.length);

    dispatch("length", length, null);
  }

  @override
  bool get isEmpty => target.isEmpty;

  @override
  bool get isNotEmpty => target.isNotEmpty;

  @override
  Iterator get iterator => target.iterator;

  @override
  String join([String separator = ""]) {
    return target.join(separator);
  }

  @override
  int lastIndexOf(element, [int start]) {
    return target.lastIndexOf(element, start);
  }

  @override
  int lastIndexWhere(bool Function(dynamic) test, [int start]) {
    return target.lastIndexWhere(test, start);
  }

  @override
  lastWhere(bool Function(dynamic) test, {Function() orElse}) {
    return target.lastWhere(test, orElse);
  }

  @override
  Iterable<T> map<T>(T Function(dynamic) f) {
    return target.map<T>(f);
  }

  @override
  reduce(Function(dynamic, dynamic) combine) {
    return target.reduce(combine);
  }

  @override
  bool remove(Object value) {
    return target.remove(value);;
  }

  @override
  removeAt(int index) {
    var el = target.removeAt(index);

    if (el != null) {
      dispatch("removed", index, 1);
      dispatch("length", length, null);
    }

    return el;
  }

  @override
  removeLast() {
    var el = target.removeLast();

    var index = length - 1;
    if (el != null) {
      dispatch("removed", index, 1);
      dispatch("length", length, null);
    }

    return el;
  }

  @override
  void removeRange(int start, int end) {
    target.removeRange(start, end);

    dispatch("removed", start, end - start);
    dispatch("length", length, null);
  }

  @override
  void removeWhere(bool Function(dynamic) test) {
    var x;
    for (x = 0; x < length; x++) {
      if (test(target[x])) {
        break;
      }
    }
    removeRange(0, x - 1);
  }

  @override
  void replaceRange(int start, int end, Iterable replacement) {
    removeRange(start, end);
    insertAll(start, replacement);
  }

  @override
  void retainWhere(bool Function(dynamic) test) {
    var x;
    for (x = 0; x < length; x++) {
      if (test(target[x])) {
        break;
      }
    }
    removeRange(x - 1, length - x + 1);
  }

  @override
  List<R> retype<R>() {
    return target.retype<R>();
  }

  @override
  Iterable get reversed => target.reversed;

  @override
  void setAll(int index, Iterable iterable) {
    return target.setAll(index, iterable);
  }

  @override
  void setRange(int start, int end, Iterable iterable, [int skipCount = 0]) {
    return target.setRange(start, end, iterable, skipCount);
  }

  @override
  void shuffle([Random random]) {
    return target.shuffle(random);
  }

  @override
  get single => target.single;

  @override
  singleWhere(bool Function(dynamic) test, {Function() orElse}) {
    return target.singleWhere(test, orElse);
  }

  @override
  Iterable skip(int count) {
    return target.skip(count);
  }

  @override
  Iterable skipWhile(bool Function(dynamic) test) {
    return target.skipWhile(test);
  }

  @override
  void sort([int Function(dynamic, dynamic) compare]) {
    return target.sort(compare);
  }

  @override
  List sublist(int start, [int end]) {
    return target.sublist(start, end);
  }

  @override
  Iterable take(int count) {
    return target.take(count);
  }

  @override
  Iterable takeWhile(bool Function(dynamic) test) {
    return target.takeWhile(test);
  }

  @override
  List toList({bool growable: true}) {
    return target.toList(growable);
  }

  @override
  Set toSet() {
    return target.toSet();
  }

  @override
  Iterable where(bool Function(dynamic) test) {
    return target.where(test);
  }

  @override
  Iterable<T> whereType<T>() {
    return target.whereType<T>();
  }
}

class MapWatcher extends Watcher implements Map {
  MapWatcher(Map target) : super(target) {
    target.forEach((k, v) {
      target[k] = Watcher.get(v);
    });
  }

  @override
  void addAll(Map other) {
    for(var key in other.keys) {
      var oldv = this[key];
      var newv = this[key] = Watcher.get(other[key]);
      dispatch(key, oldv, newv);
      dispatch("*", key, newv);
    }
  }

  @override
  void addEntries(Iterable<MapEntry> newEntries) {
    for(var item in newEntries) {
      var oldv = this[item.key];
      var newv = this[item.key] = Watcher.get(item.value);
      dispatch(item.key, oldv, newv);
      dispatch("*", item.key, newv);
    }
  }

  @override
  Map<RK, RV> cast<RK, RV>() {
    return target.cast<RK, RV>();
  }

  @override
  void clear() {
    return target.clear();
  }

  @override
  bool containsKey(Object key) {
    return target.containsKey(key);
  }

  @override
  bool containsValue(Object value) {
    return target.containsValue(value);
  }

  @override
  Iterable<MapEntry> get entries => target.entries;

  @override
  void forEach(void Function(dynamic, dynamic) f) {
    return target.addAll(f);
  }

  @override
  bool get isEmpty => target.isEmpty;

  @override
  bool get isNotEmpty => target.isNotEmpty;

  @override
  Iterable get keys => target.keys;

  @override
  int get length => target.length;

  @override
  Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> Function(dynamic, dynamic) f) {
    return target.map<K2, V2>(f);
  }

  @override
  putIfAbsent(key, Function() ifAbsent) {
    return target.putIfAbsent(key, ifAbsent);
  }

  @override
  remove(Object key) {
    return target.remove(key);
  }

  @override
  void removeWhere(bool Function(dynamic, dynamic) predicate) {
    return target.removeWhere(predicate);
  }

  @override
  Map<RK, RV> retype<RK, RV>() {
    return target.retype<RK, RV>();
  }

  @override
  update(key, Function(dynamic) update, {Function() ifAbsent}) {
    return target.update(key, update, ifAbsent);
  }

  @override
  void updateAll(Function(dynamic, dynamic) update) {
    return target.updateAll(update);
  }

  @override
  Iterable get values => target.values;



  @override
  dynamic noSuchMethod(Invocation invocation) {

    var name = invocation.memberName.toString();
    name = name.substring(8, name.length-(invocation.isSetter ? 3 : 2));
    var fnc = target[name];

    if(fnc == null)
      return super.noSuchMethod(invocation);

    if(invocation.isMethod){

      if(fnc is List){
        if(fnc is Function){

        }else {
          return super.noSuchMethod(invocation);
        }
      }

      var a = invocation.positionalArguments;

      switch(a.length){
        case 0: return fnc();
        case 1: return fnc(a[0]);
        case 2: return fnc(a[0], a[1]);
        case 3: return fnc(a[0], a[1], a[2]);
        case 4: return fnc(a[0], a[1], a[2], a[3]);
        case 5: return fnc(a[0], a[1], a[2], a[3], a[4]);
        case 6: return fnc(a[0], a[1], a[2], a[3], a[4], a[5]);
        case 7: return fnc(a[0], a[1], a[2], a[3], a[4], a[5], a[6]);
        case 8: return fnc(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]);
        case 9: return fnc(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8]);
        case 10: return fnc(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9]);
      }

      assert(false, "to many arguments");

    }else if(invocation.isGetter){
      return fnc;
    }else if(invocation.isSetter){
      return this[name] = invocation.positionalArguments[0];
    }

    return super.noSuchMethod(invocation);
  }

}
