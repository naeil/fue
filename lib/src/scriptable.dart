

abstract class Scriptable{

  get members;

  dynamic operator [](dynamic key){
    var fnc = members[key];

    if (fnc is List) {
      return fnc[0]();
    }

    return fnc;
  }

  operator []=(dynamic key, dynamic value){
    var fnc = members[key];

    if (fnc is List) {
      return fnc[1](value);
    }

    assert(false);
    return value;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) {

    var name = invocation.memberName.toString();
    var fnc = members[name.substring(8, name.length-(invocation.isSetter ? 3 : 2))];

    if(fnc == null)
      return super.noSuchMethod(invocation);

    if(invocation.isMethod){

      if(fnc is List){
        return super.noSuchMethod(invocation);
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
      if (fnc is List) {
        return fnc[0]();
      }
    }else if(invocation.isSetter){
      if (fnc is List) {
        return fnc[1](invocation.positionalArguments[0]);
      }
    }

    return super.noSuchMethod(invocation);
  }

}