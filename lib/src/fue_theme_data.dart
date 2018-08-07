
import 'package:flutter/material.dart';

import 'scriptable.dart';



class FueThemeData extends Scriptable{

  final ThemeData data;

  FueThemeData(this.data);

  var _members;
  @override
  get members => _members ??= {
    "brightness" : [()=>data.brightness],
    "primaryColor" : [()=>data.primaryColor],
    "primaryColorBrightness" : [()=>data.primaryColorBrightness],
    "primaryColorLight" : [()=>data.primaryColorLight],
    "primaryColorDark" : [()=>data.primaryColorDark],
    "accentColor" : [()=>data.accentColor],
    "accentColorBrightness" : [()=>data.accentColorBrightness],
    "canvasColor" : [()=>data.canvasColor],
    "scaffoldBackgroundColor" : [()=>data.scaffoldBackgroundColor],
    "bottomAppBarColor" : [()=>data.bottomAppBarColor],
    "cardColor" : [()=>data.cardColor],
    "dividerColor" : [()=>data.dividerColor],
    "highlightColor" : [()=>data.highlightColor],
    "splashColor" : [()=>data.splashColor],
    "splashFactory" : [()=>data.splashFactory],
    "selectedRowColor" : [()=>data.selectedRowColor],
    "unselectedWidgetColor" : [()=>data.unselectedWidgetColor],
    "disabledColor" : [()=>data.disabledColor],
    "buttonColor" : [()=>data.buttonColor],
    "buttonTheme" : [()=>data.buttonTheme],
    "secondaryHeaderColor" : [()=>data.secondaryHeaderColor],
    "textSelectionColor" : [()=>data.textSelectionColor],
    "textSelectionHandleColor" : [()=>data.textSelectionHandleColor],
    "backgroundColor" : [()=>data.backgroundColor],
    "dialogBackgroundColor" : [()=>data.dialogBackgroundColor],
    "indicatorColor" : [()=>data.indicatorColor],
    "hintColor" : [()=>data.hintColor],
    "errorColor" : [()=>data.errorColor],
    "toggleableActiveColor" : [()=>data.toggleableActiveColor],
    "textTheme" : [()=>data.textTheme],
    "primaryTextTheme" : [()=>data.primaryTextTheme],
    "accentTextTheme" : [()=>data.accentTextTheme],
    "inputDecorationTheme" : [()=>data.inputDecorationTheme],
    "iconTheme" : [()=>data.iconTheme],
    "primaryIconTheme" : [()=>data.primaryIconTheme],
    "accentIconTheme" : [()=>data.accentIconTheme],
    "sliderTheme" : [()=>data.sliderTheme],
    "chipTheme" : [()=>data.chipTheme],
    "platform" : [()=>data.platform],
  };

}