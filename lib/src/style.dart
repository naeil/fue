
part of fue;


class Style extends StyleBase{

  TextStyle textStyle;
  Container container;
  bool markTextStyle = false;
  bool markContainer = false;

  var _parent;

  final parentFactory;

  Style({this.parentFactory}):super();

  @override
  Style get parent{
    if(parentFactory != null){
      return parentFactory();
    }

    return null;
  }

  set parent(Style v){
    _parent = v;
  }

  @override
  didChangeProperty(int idx, value){
    var aa = 0;

    if(!markTextStyle){
      switch(idx){
        case StyleKeyMap.textDecoration:
        case StyleKeyMap.textDecorationLine:
        case StyleKeyMap.font:
        case StyleKeyMap.color:
          markTextStyle = true;
          break;
      }
    }

    if(!markContainer){
      switch(idx){
        case StyleKeyMap.border:
        case StyleKeyMap.borderStyle:
        case StyleKeyMap.borderColor:
        case StyleKeyMap.borderWidth:
          markContainer = true;
          break;
      }
    }

  }

  applyStyle(){

    if(markTextStyle){
      var argFontFamily = fontFamily.value == CSSDefaultIdentify.get() ? null : fontFamily.value.value;
      int argFontSize = fontSize.value.value;

      textStyle = new TextStyle(

        fontFamily: 
          argFontFamily,
        
        fontSize: 
          argFontSize.toDouble(),
        
        decoration: 
          textDecorationLine.value == CSSUnderlineIdentify.get() ? TextDecoration.underline :
          textDecorationLine.value == CSSLineThroughIdentify.get() ? TextDecoration.lineThrough :
          textDecorationLine.value == CSSOverlineIdentify.get() ? TextDecoration.overline :
          TextDecoration.none,
        
        decorationColor:
          new Color(textDecorationColor.value.value),

        decorationStyle: 
          textDecorationStyle.value == CSSSolidIdentify.get() ? TextDecorationStyle.solid :
          textDecorationStyle.value == CSSDoubleIdentify.get() ? TextDecorationStyle.double :
          textDecorationStyle.value == CSSDottedIdentify.get() ? TextDecorationStyle.dotted :
          textDecorationStyle.value == CSSDashedIdentify.get() ? TextDecorationStyle.dashed :
          textDecorationStyle.value == CSSWavyIdentify.get() ? TextDecorationStyle.wavy :
          TextDecorationStyle.solid,

        color: new Color(color.value.value)
      );

      markTextStyle = false;
    }


    
  }

  wrap(Widget widget){
    if(widget is Text){
      var a = 0;
    }

    if(markContainer){
      container = new Container(
        child: widget,

        width: width.value == CSSAutoIdentify.get() ? null : width.value.value.toDouble(),
        height: height.value == CSSAutoIdentify.get() ? null : height.value.value.toDouble(),

        padding: EdgeInsets.fromLTRB(
          paddingLeft.value.value.toDouble(),
          paddingTop.value.value.toDouble(),
          paddingRight.value.value.toDouble(),
          paddingBottom.value.value.toDouble(),
        ),


        margin: EdgeInsets.fromLTRB(
          marginLeft.value.value.toDouble(),
          marginTop.value.value.toDouble(),
          marginRight.value.value.toDouble(),
          marginBottom.value.value.toDouble(),
        ),


        decoration: borderStyle.value == CSSNoneIdentify.get() ? null : new BoxDecoration(

          // css - background-color
          color: backgroundColor.value == CSSTransparentIdentify.get() ? null : new Color(backgroundColor.value.value),

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderTopLeftRadius.value.value.toDouble()),
            topRight: Radius.circular(borderTopRightRadius.value.value.toDouble()),
            bottomLeft: Radius.circular(borderBottomLeftRadius.value.value.toDouble()),
            bottomRight: Radius.circular(borderBottomRightRadius.value.value.toDouble()),
          ),
          // css - border
          border : new Border(
            top : new BorderSide(
              color: new Color(borderLeftColor.value.value), 
              width: borderLeftWidth.value.value.toDouble(),
              style: borderLeftStyle.value == CSSSolidIdentify.get() ? BorderStyle.solid : BorderStyle.none
            ),
            right : new BorderSide(
              color: new Color(borderRightColor.value.value), 
              width: borderRightWidth.value.value.toDouble(),
              style: borderRightStyle.value == CSSSolidIdentify.get() ? BorderStyle.solid : BorderStyle.none
            ),
            bottom : new BorderSide(
              color: new Color(borderBottomColor.value.value), 
              width: borderBottomWidth.value.value.toDouble(),
              style: borderBottomStyle.value == CSSSolidIdentify.get() ? BorderStyle.solid : BorderStyle.none
            ),
            left : new BorderSide(
              color: new Color(borderLeftColor.value.value), 
              width: borderLeftWidth.value.value.toDouble(),
              style: borderLeftStyle.value == CSSSolidIdentify.get() ? BorderStyle.solid : BorderStyle.none
            ),
          )
        )
      );
      
      markContainer = false;

      return container;
    }

    return widget;
  }

}