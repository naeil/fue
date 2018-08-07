

part of fue;


enum BinaryOperator{
  Equals,                      // '==';
  NotEquals,                   // '!=';
  IdentityEquals,              // '===';
  IdentityNotEquals,           // '!==';
  LessThan,                    // '<';
  MoreThan,                    // '>';
  LessThanEquals,              // '<=';
  GreaterThanEquals,           // '>=';    
  RightShiftArithmetic,        // '>>';
  LeftShiftArithmetic,         // '<<';
  Plus,                        // '+';
  Minus,                       // '-';
  Multiply,                    // '*';
  Divide,                      // '/';
  Modulus,                     // '%';
  BitOr,                       // '|';
  BitXOr,                      // '^';
  BitAnd,                      // '&';  
  RightShiftLogical,           // '>>>';
}

enum AssignmentOperator {
  Assign,                      // '=';
  MultiplyAssign,              // '*=';
  DivideAssign,                // '/='; 
  ModulusAssign,               // '%='; 
  PlusAssign,                  // '+='; 
  MinusAssign,                 // '-='; 
  LeftShiftArithmeticAssign,   // '<<='; 
  RightShiftArithmeticAssign,  // '>>='; 
  RightShiftLogicalAssign,     // '>>>='; 
  BitAndAssign,                // '&='; 
  BitXorAssign,                // '^='; 
  BitOrAssign,                 // '|=';
}

enum LogicalOperator{
  And,                         // '&&';
  Or,                          // '||';
}

enum UpdateOperator{
  PlusPlus,                    // '++';
  MinusMinus,                  // '--';
}

enum UnaryOperator{
  Plus,                        // '+';
  Minus,                       // '-';
  Not,                         // '!';
  BitNot,                      // '~';
}





class Expression{

  void visit(void Function(Expression) cb){ cb(this); }
}


class ObjectExpression extends Expression{
  final Map<String, Expression> properties;

  ObjectExpression(this.properties);
  
  @override
  String toString() {
    return "<Map>" + properties.toString();
  }

  @override
  void visit(void Function(Expression) cb) {
    super.visit(cb);
    properties.forEach((k, v)=>v.visit(cb));
  }  
}

class ArrayExpression extends Expression{
  final List<Expression> elements;

  ArrayExpression(this.elements);

  @override
  String toString() {
    return "<List>" + elements.toString();
  }
    
  @override
  void visit(void Function(Expression) cb) {
    super.visit(cb);
    elements.forEach((v)=>v.visit(cb));
  }   
}

class Identifier extends Expression{
  final String name;

  Identifier(this.name);

  @override
  String toString() {
    return "\$"+name+"";
  }

}
class ThisExpression extends Expression{}
class UpdateExpression extends Expression{
  final UpdateOperator operator;
  final Expression argument;
  final bool prefix;

  UpdateExpression(this.operator, this.argument, this.prefix);


  @override
  visit(void Function(Expression) cb) {
    super.visit(cb);
    argument.visit(cb);
  }
}
class BinaryExpression extends Expression{
  final BinaryOperator operator;
  final Expression left;
  final Expression right;

  BinaryExpression(this.operator, this.left, this.right);

  @override
  String toString() {
    return " (" + left.toString() + ") " + operator.toString() + " (" + right.toString() + ") ";
  }

  @override
  visit(void Function(Expression) cb) {
    super.visit(cb);
    left.visit(cb);
    right.visit(cb);
  }  
}
class AssignmentExpression extends Expression{
  final AssignmentOperator operator;
  final Expression left;
  final Expression right;

  AssignmentExpression(this.operator, this.left, this.right);

  @override
  String toString() {
    return " (" + left.toString() + ") " + operator.toString() + " (" + right.toString() + ") ";
  }

  @override
  visit(void Function(Expression) cb) {
    super.visit(cb);
    left.visit(cb);
    right.visit(cb);
  }    
}
class LogicalExpression extends Expression{
  final LogicalOperator operator;
  final Expression left;
  final Expression right;

  LogicalExpression(this.operator, this.left, this.right);

  @override
  visit(void Function(Expression) cb) {
    super.visit(cb);
    left.visit(cb);
    right.visit(cb);
  }    
}
class UnaryExpression extends Expression{
  final UnaryOperator operator;
  final Expression argument;
  final bool prefix;

  UnaryExpression(this.operator, this.argument, this.prefix);

  @override
  visit(void Function(Expression) cb) {
    super.visit(cb);
    argument.visit(cb);
  }  
}
class ConditionalExpression extends Expression{
  final Expression test;
  final Expression alternate;
  final Expression consequent;

  ConditionalExpression(this.test, this.alternate, this.consequent);

  @override
  visit(void Function(Expression) cb) {
    super.visit(cb);
    test.visit(cb);
    alternate.visit(cb);
    consequent.visit(cb);
  }  
}
class SequenceExpression extends Expression{
  final List<Expression> expressions;

  SequenceExpression(this.expressions);

  @override
  visit(void Function(Expression) cb) {
    super.visit(cb);
    expressions.forEach((v)=>v.visit(cb));
  }    
}
class Literal extends Expression{
  final dynamic value;

  Literal(this.value);

  @override
  String toString() {
    return value.toString();
  }  

}



class MemberExpression extends Expression{
  final Expression object;
  final Expression property;
  final bool computed;

  MemberExpression(this.object, this.property, this.computed);

  @override
  String toString() {
    return object.toString() + "." + property.toString();
  }

  @override
  void visit(void Function(Expression) cb) {
    super.visit(cb);
    object.visit(cb);
    property.visit(cb);
  }    
}

class ForExpression extends Expression{
  final String value;
  final String index;
  final Expression target;

  ForExpression(this.value, this.index, this.target);
  
}

class CallExpression extends Expression{
  final Expression callee;
  final List arguments;

  CallExpression(this.callee, this.arguments);

  @override
  String toString() {
    return callee.toString() + "(" + (arguments == null ? "" : arguments.map((v)=>v.toString()).join(",")) + ")";
  }

  @override
  void visit(void Function(Expression) cb) {
    super.visit(cb);
    callee.visit(cb);
    if(arguments != null)
      arguments.forEach((v)=>v.visit(cb));
  } 
}

class LambdaExpression extends Expression{
  final List arguments;
  final Expression body;

  LambdaExpression(this.arguments, this.body);

  @override 
  String toString(){
    return "(" + this.arguments.join(', ') + ") {" + this.body.toString() + "}";
  }
}