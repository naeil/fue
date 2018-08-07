
part of fue;

class Compiler{
  
  static compile(arg){

    if(arg is String){
      var parser = new Parser(arg);
      arg = parser.parse_Start();
    }

    return (Context ctx){
      return eval(arg, ctx);
    };
  }
  
  static T Function(Context) compileTo<T>(final Expression exp){

    var z = T;

    if(T.runtimeType == bool){
      return (Context ctx){
        return toBool(eval(exp, ctx)) as T;
      };
    }

    if(T.runtimeType == num){
      return (Context ctx){
        return toNum(eval(exp, ctx)) as T;
      };
    }
    
    if(T == String){
      return (Context ctx){
        return eval(exp, ctx).toString() as T;
      };
    }

    return (Context ctx){
      return eval(exp, ctx) as T;
    };
  }
  static eval(Expression exp, Context ctx)=>_evalMap[exp.runtimeType](exp, ctx);

  static var _evalMap = <Type, Function(Expression, Context)>{
    Null : (Expression exp, Context ctx){},
    Literal : _literal,
    ThisExpression : _thisExpression,
    ObjectExpression : _objectExpression,
    ArrayExpression : _arrayExpression,
    Identifier : _identifier,
    BinaryExpression : _binaryExpression,
    AssignmentExpression : _assignmentExpression,
    LogicalExpression : _logicalExpression,
    UpdateExpression : _updateExpression,
    UnaryExpression : _unaryExpression,
    ConditionalExpression : _conditionalExpression,
    CallExpression : _callExpression,
    MemberExpression : _memberExpression,
    LambdaExpression : _lambdaExpression
  };

  static _thisExpression(Expression arg, Context ctx) {
    return ctx.getThis();
  }

  static _lambdaExpression(Expression arg, Context ctx){
    var exp = arg as LambdaExpression;
    var a = exp.arguments.map((v)=>v.value).toList();
    //return exp.value;
    var fnc = Compiler.compile(exp.body);

    switch(a.length){
      case 0: return
       () => fnc(ctx.createChildContext({}));
      
      case 1: return
        (_0) => 
          fnc(ctx.createChildContext({a[0]:_0}));

      case 2: return
        (_0, _1) => 
          fnc(ctx.createChildContext({a[0]:_0, a[1]:_1}));

      case 3: return
        (_0, _1, _2) => 
          fnc(ctx.createChildContext({a[0]:_0, a[1]:_1, a[2]:_2}));

      case 4: return
        (_0, _1, _2, _3) => 
          fnc(ctx.createChildContext({a[0]:_0, a[1]:_1, a[2]:_2, a[3]:_3}));

      case 5: return
        (_0, _1, _2, _3, _4) => 
          fnc(ctx.createChildContext({a[0]:_0, a[1]:_1, a[2]:_2, a[3]:_3, a[4]:_4}));

      case 6: return
        (_0, _1, _2, _3, _4, _5) => 
          fnc(ctx.createChildContext({a[0]:_0, a[1]:_1, a[2]:_2, a[3]:_3, a[4]:_4, a[5]:_5}));

      case 7: return
        (_0, _1, _2, _3, _4, _5, _6) => 
          fnc(ctx.createChildContext({a[0]:_0, a[1]:_1, a[2]:_2, a[3]:_3, a[4]:_4, a[5]:_5, a[6]:_6}));

      case 8: return
        (_0, _1, _2, _3, _4, _5, _6, _7) => 
          fnc(ctx.createChildContext({a[0]:_0, a[1]:_1, a[2]:_2, a[3]:_3, a[4]:_4, a[5]:_5, a[6]:_6, a[7]:_7}));

      case 9: return 
        (_0, _1, _2, _3, _4, _5, _6, _7, _8) => 
          fnc(ctx.createChildContext({a[0]:_0, a[1]:_1, a[2]:_2, a[3]:_3, a[4]:_4, a[5]:_5, a[6]:_6, a[7]:_7, a[8]:_8}));

      case 10: return 
        (_0, _1, _2, _3, _4, _5, _6, _7, _8, _9) => 
          fnc(ctx.createChildContext({a[0]:_0, a[1]:_1, a[2]:_2, a[3]:_3, a[4]:_4, a[5]:_5, a[6]:_6, a[7]:_7, a[8]:_8, a[9]:_9}));
    }

    throw "too many arguments lambda.";
    
    return null;
  }

  static _memberExpression(Expression arg, Context ctx){
    var exp = arg as MemberExpression;
    //return exp.value;

    var obj = eval(exp.object, ctx);
    var property = eval(exp.property, ctx);

    ctx.setLastMemberExpression(obj, property);

    return obj[property];
  }
  
  static _callExpression(Expression arg, Context ctx){
    var exp = arg as CallExpression;

    var callee = eval(exp.callee, ctx);
    var a = exp.arguments.map((v)=>eval(v, ctx)).toList();

    var src = callee.toString();
    var argcnt = src.indexOf("()") > -1 ? 0 : src.split(',').length;

    if(callee != null && callee is Function ){
      switch(a.length){
        case 0: return callee();
        case 1: return callee(a[0]);
        case 2: return callee(a[0], a[1]);
        case 3: return callee(a[0], a[1], a[2]);
        case 4: return callee(a[0], a[1], a[2], a[3]);
        case 5: return callee(a[0], a[1], a[2], a[3], a[4]);
        case 6: return callee(a[0], a[1], a[2], a[3], a[4], a[5]);
        case 7: return callee(a[0], a[1], a[2], a[3], a[4], a[5], a[6]);
        case 8: return callee(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]);
        case 9: return callee(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8]);
        case 10: return callee(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9]);
      }
    }

    return null;
  }

  static _literal(Expression arg, Context ctx){
    var exp = arg as Literal;
    return exp.value;
  }
  
  static _objectExpression(Expression arg, Context ctx){
    var exp = arg as ObjectExpression;
    return exp.properties.map((k, v){
      return new MapEntry(k, eval(v, ctx));
    });
  }
  
  static _arrayExpression(Expression arg, Context ctx){
    var exp = arg as ArrayExpression;
    var rtn = [];
    for(var el in exp.elements){
      rtn.add(eval(el, ctx));
    }
    return rtn;
  }

  static _identifier(Expression arg, Context ctx){
    var exp = arg as Identifier;
    return ctx.getIdentifier(exp.name);
  }

  static _binaryExpression(Expression arg, Context ctx){
    var exp = arg as BinaryExpression;
    var left = eval(exp.left, ctx);
    var right = eval(exp.right, ctx);
    
    return calc(exp.operator, left, right);
  }

  static _assignmentExpression(Expression arg, Context ctx){
    var exp = arg as AssignmentExpression;

    ctx.clearMemberExpression();
    eval(exp.left, ctx);
    var info = ctx.getLastMemberExpression();
    var right = eval(exp.right, ctx);

    if(exp.left is Identifier){
      var left = exp.left as Identifier;
      ctx.setIdentifier(left.name, right);
    }else if(info != null){
      info[0][info[1]] = right;
    }else{
      throw "can't assign.";
    }

    return right;
  }
  static _logicalExpression(Expression arg, Context ctx){
    var exp = arg as LogicalExpression;
    var left = eval(exp.left, ctx);
    var right = eval(exp.right, ctx);
    
    return logical_calc(exp.operator, left, right);
  }

  static _updateExpression(Expression arg, Context ctx){
    var exp = arg as UpdateExpression;
    var value = eval(exp.argument, ctx);
    var rtn = 0;

    if(exp.operator == UpdateOperator.PlusPlus){
      if(exp.prefix){
        // ++value
        rtn = value + 1;
        eval(new AssignmentExpression(AssignmentOperator.Assign, exp.argument, new Literal(rtn)), ctx);
      }else{
        // value++1
        rtn = value;
        eval(new AssignmentExpression(AssignmentOperator.Assign, exp.argument, new Literal(rtn+1)), ctx);
      }
    }else{
      if(exp.prefix){
        // --value
        rtn = value - 1;
        eval(new AssignmentExpression(AssignmentOperator.Assign, exp.argument, new Literal(rtn)), ctx);
      }else{
        // value--
        rtn = value;
        eval(new AssignmentExpression(AssignmentOperator.Assign, exp.argument, new Literal(rtn-1)), ctx);
      }
    }

    return rtn;
  }

  static _unaryExpression(Expression arg, Context ctx){
    var exp = arg as UnaryExpression;

    var v = toNum(eval(exp.argument, ctx));

    switch(exp.operator){
      case UnaryOperator.BitNot:
        return ~v;
      case UnaryOperator.Minus:
        return -v;
      case UnaryOperator.Not:
        return v == 0;
      case UnaryOperator.Plus:
        return v;

    }

    return exp;
  }

  static _conditionalExpression(Expression arg, Context ctx){

    var exp = arg as ConditionalExpression;

    var v = toBool(eval(exp.test, ctx));

    return v ? eval(exp.alternate, ctx) : eval(exp.consequent, ctx);

  }

  static toNum(final v){

    if(v is String){
      try{
        var v2 = double.parse(v);
        return v2; 
      }catch(e){
        return toBool(v) ? 1 : 0;
      }
    }
    if(v is num){
      return v;
    }
    if(v is List || v is Map){
      return v.length != 0 ? 1 : 0;
    }
    if(v is bool){
      return v ? 1 : 0;
    }

    return 0;
  }

  static toBool(final v){

    if(v is String){
      return v.length != 0 && v !="0"; 
    }
    if(v is num){
      return v != 0;
    }
    if(v is List || v is Map){
      return v.length != 0;
    }
    if(v is bool){
      return v;
    }

    return false;
  }

  static logical_calc(LogicalOperator op, left, right){

    bool l = toBool(left);
    bool r = toBool(right);

    switch(op){
      case LogicalOperator.And:
        return l && r;
      case LogicalOperator.Or:
        return l || r;
    }
  }

  static calc(BinaryOperator op, left, right){
    if(op == BinaryOperator.Plus){
      if(left is String){
        return left + right.toString();
      }else if(right is String){
        return left.toString() + right;
      }
    }

    switch(op){
      case BinaryOperator.Equals:                      // '==';
        return left == right;
      case BinaryOperator.NotEquals:                   // '!=';
        return left != right;
//      case BinaryOperator.IdentityEquals:              // '===';
//        return left !== right;
//      case BinaryOperator.IdentityNotEquals:           // '!==';
//        return left == right;
      case BinaryOperator.LessThan:                    // '<';
        return left < right;
      case BinaryOperator.MoreThan:                    // '>';
        return left > right;
      case BinaryOperator.LessThanEquals:              // '<=';
        return left <= right;
      case BinaryOperator.GreaterThanEquals:           // '>=';    
        return left >= right;
      case BinaryOperator.RightShiftArithmetic:        // '>>';
        return left >> right;
      case BinaryOperator.LeftShiftArithmetic:         // '<<';
        return left << right;
      case BinaryOperator.Plus:                        // '+';
        return left + right;
      case BinaryOperator.Minus:                       // '-';
        return left - right;
      case BinaryOperator.Multiply:                    // '*';
        return left * right;
      case BinaryOperator.Divide:                      // '/';
        return left / right;
      case BinaryOperator.Modulus:                     // '%';
        return left % right;
      case BinaryOperator.BitOr:                       // '|';
        return left | right;
      case BinaryOperator.BitXOr:                      // '^';
        return left ^ right;
      case BinaryOperator.BitAnd:                      // '&';  
        return left & right;
//      case BinaryOperator.RightShiftLogical:           // '>>>';      
      default:
        throw "Unknow operator $op.";
    }

  }

}
