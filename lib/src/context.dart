part of fue;

abstract class Context{

  get values;

  Context parent;

  var _this;

  void setThis(v) {
    _this = v;
  }

  dynamic getThis() {
    return _this ?? parent?.getThis();
  }

  dynamic getIdentifier(String name){

    if(values.containsKey(name)){
      return values[name];
    }

    if(parent != null){
      return parent.getIdentifier(name);
    }

    return null;
  }

  void setIdentifier(String name, value){

    if(values.containsKey(name)){
      values[name] = value;
      return ;
    }

    if(parent != null){
      parent.setIdentifier(name, value);
      return ;
    }

    values[name] = value;
  }

  var statements = [];
  pushStatement(v){
    statements.add(v);
  }

  getStatement(){
    return statements.last ?? parent?.getStatement();
  }

  popStatement(){
    return statements.length > 0 ? statements.removeLast() : parent?.popStatement();
  }

  Context createChildContext(values);

  var _mexInfo;
  clearMemberExpression(){
    _mexInfo = null;
  }
  setLastMemberExpression(obj, property){
    _mexInfo = [obj, property];
  }
  getLastMemberExpression(){
    return _mexInfo;
  }
}