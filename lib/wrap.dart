

import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/physics.dart';



const double _kDefaultIndicatorRadius = 10.0;
const Color _kDefaultTabBarBackgroundColor = const Color(0xCCF8F8F8);

const Color _kDefaultNavBarBackgroundColor = const Color(0xCCF8F8F8);
const Color _kDefaultNavBarBorderColor = const Color(0x4C000000);

const Border _kDefaultNavBarBorder = const Border(
    bottom: const BorderSide(
      color: _kDefaultNavBarBorderColor,
      width: 0.0, // One physical pixel.
      style: BorderStyle.solid,
    ),
  );
  

const Color _kDefaultBackground = const Color(0xFFD2D4DB);
/// Eyeballed value comparing with a native picker.
const double _kDefaultDiameterRatio = 1.1;
/// Opacity fraction value that hides the wheel above and below the 'magnifier'
/// lens with the same color as the background.


class _DefaultHeroTag {
    const _DefaultHeroTag();
    @override
    String toString() => '<default FloatingActionButton tag>';
  }

const int defaultRowsPerPage = 10;

Widget defaultLayoutBuilder(Widget currentChild, List<Widget> previousChildren) {
    List<Widget> children = previousChildren;
    if (currentChild != null) {
      children = children.toList()..add(currentChild);
    }
    return new Stack(
      children: children,
      alignment: Alignment.center,
    );
  }



const double _kMenuItemHeight = 48.0;
const double _kMenuDividerHeight = 16.0;


const Duration _kSnackBarDisplayDuration = const Duration(milliseconds: 1500);


const double _kHeight = 12.0; // height of banner
const Color _kColor = const Color(0xA0B71C1C);
const TextStyle _kTextStyle = const TextStyle(
  color: const Color(0xFFFFFFFF),
  fontSize: _kHeight * 0.85,
  fontWeight: FontWeight.w900,
  height: 1.0
);

const double kMiddleSpacing = 16.0;

const double _defaultRefreshTriggerPullDistance = 100.0;
const double _defaultRefreshIndicatorExtent = 60.0;

Widget buildSimpleRefreshIndicator(BuildContext context,
    RefreshIndicatorMode refreshState,
    double pulledExtent,
    double refreshTriggerPullDistance,
    double refreshIndicatorExtent,
  ) {
    const Curve opacityCurve = const Interval(0.4, 0.8, curve: Curves.easeInOut);
    return new Align(
      alignment: Alignment.bottomCenter,
      child: new Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: refreshState == RefreshIndicatorMode.drag
            ? new Opacity(
                opacity: opacityCurve.transform(
                  min(pulledExtent / refreshTriggerPullDistance, 1.0)
                ),
                child: const Icon(
                  CupertinoIcons.down_arrow,
                  color: CupertinoColors.inactiveGray,
                  size: 36.0,
                ),
              )
            : new Opacity(
                opacity: opacityCurve.transform(
                  min(pulledExtent / refreshIndicatorExtent, 1.0)
                ),
                child: const CupertinoActivityIndicator(radius: 14.0),
              ),
      ),
    );
  }


const double _epsilonDefault = 1e-3;

const double defaultDiameterRatio = 2.0;
const double defaultPerspective = 0.003;

const double _kMinThumbExtent = 18.0;

Widget _defaultTransitionsBuilder(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
  


// flutter/packages/flutter/lib/src/animation/animation_controller.dart
AnimationController _createAnimationControllerWidget([arg]) {
    return new AnimationController(
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null,
        debugLabel: (arg is Map && arg.containsKey('debugLabel')) ? arg['debugLabel'] : null,
        lowerBound: (arg is Map && arg.containsKey('lowerBound')) ? arg['lowerBound'] : 0.0,
        upperBound: (arg is Map && arg.containsKey('upperBound')) ? arg['upperBound'] : 1.0,
        /*@required*/ vsync: (arg is Map && arg.containsKey('vsync')) ? arg['vsync'] : null
    );
}


// flutter/packages/flutter/lib/src/animation/animation_controller.dart
AnimationController _createAnimationController_unboundedWidget([arg]) {
    return AnimationController.unbounded(
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : 0.0,
        duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null,
        debugLabel: (arg is Map && arg.containsKey('debugLabel')) ? arg['debugLabel'] : null,
        /*@required*/ vsync: (arg is Map && arg.containsKey('vsync')) ? arg['vsync'] : null
    );
}


// flutter/packages/flutter/lib/src/animation/animations.dart
CurvedAnimation _createCurvedAnimationWidget([arg]) {
    return new CurvedAnimation(
        /*@required*/ parent: (arg is Map && arg.containsKey('parent')) ? arg['parent'] : null,
        /*@required*/ curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : null,
        reverseCurve: (arg is Map && arg.containsKey('reverseCurve')) ? arg['reverseCurve'] : null
    );
}


// flutter/packages/flutter/lib/src/animation/animations.dart
AnimationMean _createAnimationMeanWidget([arg]) {
    return new AnimationMean(
        left: (arg is Map && arg.containsKey('left')) ? arg['left'] : null,
        right: (arg is Map && arg.containsKey('right')) ? arg['right'] : null
    );
}


// flutter/packages/flutter/lib/src/animation/tween.dart
Tween _createTweenWidget([arg]) {
    return new Tween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/animation/tween.dart
ColorTween _createColorTweenWidget([arg]) {
    return new ColorTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/animation/tween.dart
SizeTween _createSizeTweenWidget([arg]) {
    return new SizeTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/animation/tween.dart
RectTween _createRectTweenWidget([arg]) {
    return new RectTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/animation/tween.dart
IntTween _createIntTweenWidget([arg]) {
    return new IntTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/animation/tween.dart
StepTween _createStepTweenWidget([arg]) {
    return new StepTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/animation/tween.dart
CurveTween _createCurveTweenWidget([arg]) {
    return new CurveTween(
        /*@required*/ curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/activity_indicator.dart
CupertinoActivityIndicator _createCupertinoActivityIndicatorWidget([arg]) {
    return new CupertinoActivityIndicator(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        animating: (arg is Map && arg.containsKey('animating')) ? arg['animating'] : true,
        radius: (arg is Map && arg.containsKey('radius')) ? arg['radius'] : _kDefaultIndicatorRadius
    );
}


// flutter/packages/flutter/lib/src/cupertino/bottom_tab_bar.dart
CupertinoTabBar _createCupertinoTabBarWidget([arg]) {
    return new CupertinoTabBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ items: (arg is Map && arg.containsKey('items')) ? arg['items'] : null,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null,
        currentIndex: (arg is Map && arg.containsKey('currentIndex')) ? arg['currentIndex'] : 0,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : _kDefaultTabBarBackgroundColor,
        activeColor: (arg is Map && arg.containsKey('activeColor')) ? arg['activeColor'] : CupertinoColors.activeBlue,
        inactiveColor: (arg is Map && arg.containsKey('inactiveColor')) ? arg['inactiveColor'] : CupertinoColors.inactiveGray,
        iconSize: (arg is Map && arg.containsKey('iconSize')) ? arg['iconSize'] : 30.0
    );
}


// flutter/packages/flutter/lib/src/cupertino/button.dart
CupertinoButton _createCupertinoButtonWidget([arg]) {
    return new CupertinoButton(
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        minSize: (arg is Map && arg.containsKey('minSize')) ? arg['minSize'] : 44.0,
        pressedOpacity: (arg is Map && arg.containsKey('pressedOpacity')) ? arg['pressedOpacity'] : 0.1,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : const BorderRadius.all(const Radius.circular(8.0)),
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/dialog.dart
CupertinoDialog _createCupertinoDialogWidget([arg]) {
    return new CupertinoDialog(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/dialog.dart
CupertinoAlertDialog _createCupertinoAlertDialogWidget([arg]) {
    return new CupertinoAlertDialog(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        content: (arg is Map && arg.containsKey('content')) ? arg['content'] : null,
        actions: (arg is Map && arg.containsKey('actions')) ? arg['actions'] : const <Widget>[],
        scrollController: (arg is Map && arg.containsKey('scrollController')) ? arg['scrollController'] : null,
        actionScrollController: (arg is Map && arg.containsKey('actionScrollController')) ? arg['actionScrollController'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/dialog.dart
CupertinoDialogAction _createCupertinoDialogActionWidget([arg]) {
    return new CupertinoDialogAction(
        onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        isDefaultAction: (arg is Map && arg.containsKey('isDefaultAction')) ? arg['isDefaultAction'] : false,
        isDestructiveAction: (arg is Map && arg.containsKey('isDestructiveAction')) ? arg['isDestructiveAction'] : false,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/nav_bar.dart
CupertinoNavigationBar _createCupertinoNavigationBarWidget([arg]) {
    return new CupertinoNavigationBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        leading: (arg is Map && arg.containsKey('leading')) ? arg['leading'] : null,
        automaticallyImplyLeading: (arg is Map && arg.containsKey('automaticallyImplyLeading')) ? arg['automaticallyImplyLeading'] : true,
        middle: (arg is Map && arg.containsKey('middle')) ? arg['middle'] : null,
        trailing: (arg is Map && arg.containsKey('trailing')) ? arg['trailing'] : null,
        border: (arg is Map && arg.containsKey('border')) ? arg['border'] : _kDefaultNavBarBorder,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : _kDefaultNavBarBackgroundColor,
        actionsForegroundColor: (arg is Map && arg.containsKey('actionsForegroundColor')) ? arg['actionsForegroundColor'] : CupertinoColors.activeBlue
    );
}


// flutter/packages/flutter/lib/src/cupertino/nav_bar.dart
CupertinoSliverNavigationBar _createCupertinoSliverNavigationBarWidget([arg]) {
    return new CupertinoSliverNavigationBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ largeTitle: (arg is Map && arg.containsKey('largeTitle')) ? arg['largeTitle'] : null,
        leading: (arg is Map && arg.containsKey('leading')) ? arg['leading'] : null,
        automaticallyImplyLeading: (arg is Map && arg.containsKey('automaticallyImplyLeading')) ? arg['automaticallyImplyLeading'] : true,
        middle: (arg is Map && arg.containsKey('middle')) ? arg['middle'] : null,
        trailing: (arg is Map && arg.containsKey('trailing')) ? arg['trailing'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : _kDefaultNavBarBackgroundColor,
        actionsForegroundColor: (arg is Map && arg.containsKey('actionsForegroundColor')) ? arg['actionsForegroundColor'] : CupertinoColors.activeBlue
    );
}


// flutter/packages/flutter/lib/src/cupertino/page_scaffold.dart
CupertinoPageScaffold _createCupertinoPageScaffoldWidget([arg]) {
    return new CupertinoPageScaffold(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        navigationBar: (arg is Map && arg.containsKey('navigationBar')) ? arg['navigationBar'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : CupertinoColors.white,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/picker.dart
CupertinoPicker _createCupertinoPickerWidget([arg]) {
    return new CupertinoPicker(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        diameterRatio: (arg is Map && arg.containsKey('diameterRatio')) ? arg['diameterRatio'] : _kDefaultDiameterRatio,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : _kDefaultBackground,
        scrollController: (arg is Map && arg.containsKey('scrollController')) ? arg['scrollController'] : null,
        /*@required*/ itemExtent: (arg is Map && arg.containsKey('itemExtent')) ? arg['itemExtent'] : null,
        /*@required*/ onSelectedItemChanged: (arg is Map && arg.containsKey('onSelectedItemChanged')) ? arg['onSelectedItemChanged'] : null,
        /*@required*/ children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/refresh.dart
CupertinoRefreshControl _createCupertinoRefreshControlWidget([arg]) {
    return new CupertinoRefreshControl(
        refreshTriggerPullDistance: (arg is Map && arg.containsKey('refreshTriggerPullDistance')) ? arg['refreshTriggerPullDistance'] : _defaultRefreshTriggerPullDistance,
        refreshIndicatorExtent: (arg is Map && arg.containsKey('refreshIndicatorExtent')) ? arg['refreshIndicatorExtent'] : _defaultRefreshIndicatorExtent,
        builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : buildSimpleRefreshIndicator,
        onRefresh: (arg is Map && arg.containsKey('onRefresh')) ? arg['onRefresh'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/route.dart
CupertinoPageRoute _createCupertinoPageRouteWidget([arg]) {
    return new CupertinoPageRoute(
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null,
        settings: (arg is Map && arg.containsKey('settings')) ? arg['settings'] : null,
        maintainState: (arg is Map && arg.containsKey('maintainState')) ? arg['maintainState'] : true,
        fullscreenDialog: (arg is Map && arg.containsKey('fullscreenDialog')) ? arg['fullscreenDialog'] : false,
        hostRoute: (arg is Map && arg.containsKey('hostRoute')) ? arg['hostRoute'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/route.dart
CupertinoPageTransition _createCupertinoPageTransitionWidget([arg]) {
    return new CupertinoPageTransition(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ primaryRouteAnimation: (arg is Map && arg.containsKey('primaryRouteAnimation')) ? arg['primaryRouteAnimation'] : null,
        /*@required*/ secondaryRouteAnimation: (arg is Map && arg.containsKey('secondaryRouteAnimation')) ? arg['secondaryRouteAnimation'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ linearTransition: (arg is Map && arg.containsKey('linearTransition')) ? arg['linearTransition'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/route.dart
CupertinoFullscreenDialogTransition _createCupertinoFullscreenDialogTransitionWidget([arg]) {
    return new CupertinoFullscreenDialogTransition(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ animation: (arg is Map && arg.containsKey('animation')) ? arg['animation'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/scrollbar.dart
CupertinoScrollbar _createCupertinoScrollbarWidget([arg]) {
    return new CupertinoScrollbar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/slider.dart
CupertinoSlider _createCupertinoSliderWidget([arg]) {
    return new CupertinoSlider(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        onChangeStart: (arg is Map && arg.containsKey('onChangeStart')) ? arg['onChangeStart'] : null,
        onChangeEnd: (arg is Map && arg.containsKey('onChangeEnd')) ? arg['onChangeEnd'] : null,
        min: (arg is Map && arg.containsKey('min')) ? arg['min'] : 0.0,
        max: (arg is Map && arg.containsKey('max')) ? arg['max'] : 1.0,
        divisions: (arg is Map && arg.containsKey('divisions')) ? arg['divisions'] : null,
        activeColor: (arg is Map && arg.containsKey('activeColor')) ? arg['activeColor'] : CupertinoColors.activeBlue
    );
}


// flutter/packages/flutter/lib/src/cupertino/switch.dart
CupertinoSwitch _createCupertinoSwitchWidget([arg]) {
    return new CupertinoSwitch(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        activeColor: (arg is Map && arg.containsKey('activeColor')) ? arg['activeColor'] : CupertinoColors.activeGreen
    );
}


// flutter/packages/flutter/lib/src/cupertino/tab_scaffold.dart
CupertinoTabScaffold _createCupertinoTabScaffoldWidget([arg]) {
    return new CupertinoTabScaffold(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ tabBar: (arg is Map && arg.containsKey('tabBar')) ? arg['tabBar'] : null,
        /*@required*/ tabBuilder: (arg is Map && arg.containsKey('tabBuilder')) ? arg['tabBuilder'] : null
    );
}


// flutter/packages/flutter/lib/src/cupertino/tab_view.dart
CupertinoTabView _createCupertinoTabViewWidget([arg]) {
    return new CupertinoTabView(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null,
        routes: (arg is Map && arg.containsKey('routes')) ? arg['routes'] : null,
        onGenerateRoute: (arg is Map && arg.containsKey('onGenerateRoute')) ? arg['onGenerateRoute'] : null,
        onUnknownRoute: (arg is Map && arg.containsKey('onUnknownRoute')) ? arg['onUnknownRoute'] : null,
        navigatorObservers: (arg is Map && arg.containsKey('navigatorObservers')) ? arg['navigatorObservers'] : const <NavigatorObserver>[]
    );
}


// flutter/packages/flutter/lib/src/cupertino/thumb_painter.dart
CupertinoThumbPainter _createCupertinoThumbPainterWidget([arg]) {
    return new CupertinoThumbPainter(
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : CupertinoColors.white,
        shadowColor: (arg is Map && arg.containsKey('shadowColor')) ? arg['shadowColor'] : const Color(0x2C000000)
    );
}


// flutter/packages/flutter/lib/src/foundation/assertions.dart
FlutterErrorDetails _createFlutterErrorDetailsWidget([arg]) {
    return new FlutterErrorDetails(
        exception: (arg is Map && arg.containsKey('exception')) ? arg['exception'] : null,
        stack: (arg is Map && arg.containsKey('stack')) ? arg['stack'] : null,
        library: (arg is Map && arg.containsKey('library')) ? arg['library'] : 'Flutter framework',
        context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        stackFilter: (arg is Map && arg.containsKey('stackFilter')) ? arg['stackFilter'] : null,
        informationCollector: (arg is Map && arg.containsKey('informationCollector')) ? arg['informationCollector'] : null,
        silent: (arg is Map && arg.containsKey('silent')) ? arg['silent'] : false
    );
}


// flutter/packages/flutter/lib/src/gestures/binding.dart
FlutterErrorDetailsForPointerEventDispatcher _createFlutterErrorDetailsForPointerEventDispatcherWidget([arg]) {
    return new FlutterErrorDetailsForPointerEventDispatcher(
        exception: (arg is Map && arg.containsKey('exception')) ? arg['exception'] : null,
        stack: (arg is Map && arg.containsKey('stack')) ? arg['stack'] : null,
        library: (arg is Map && arg.containsKey('library')) ? arg['library'] : null,
        context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        event: (arg is Map && arg.containsKey('event')) ? arg['event'] : null,
        hitTestEntry: (arg is Map && arg.containsKey('hitTestEntry')) ? arg['hitTestEntry'] : null,
        informationCollector: (arg is Map && arg.containsKey('informationCollector')) ? arg['informationCollector'] : null,
        silent: (arg is Map && arg.containsKey('silent')) ? arg['silent'] : false
    );
}


// flutter/packages/flutter/lib/src/gestures/drag_details.dart
DragDownDetails _createDragDownDetailsWidget([arg]) {
    return new DragDownDetails(
        globalPosition: (arg is Map && arg.containsKey('globalPosition')) ? arg['globalPosition'] : Offset.zero
    );
}


// flutter/packages/flutter/lib/src/gestures/drag_details.dart
DragStartDetails _createDragStartDetailsWidget([arg]) {
    return new DragStartDetails(
        sourceTimeStamp: (arg is Map && arg.containsKey('sourceTimeStamp')) ? arg['sourceTimeStamp'] : null,
        globalPosition: (arg is Map && arg.containsKey('globalPosition')) ? arg['globalPosition'] : Offset.zero
    );
}


// flutter/packages/flutter/lib/src/gestures/drag_details.dart
DragUpdateDetails _createDragUpdateDetailsWidget([arg]) {
    return new DragUpdateDetails(
        sourceTimeStamp: (arg is Map && arg.containsKey('sourceTimeStamp')) ? arg['sourceTimeStamp'] : null,
        delta: (arg is Map && arg.containsKey('delta')) ? arg['delta'] : Offset.zero,
        primaryDelta: (arg is Map && arg.containsKey('primaryDelta')) ? arg['primaryDelta'] : null,
        /*@required*/ globalPosition: (arg is Map && arg.containsKey('globalPosition')) ? arg['globalPosition'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/drag_details.dart
DragEndDetails _createDragEndDetailsWidget([arg]) {
    return new DragEndDetails(
        velocity: (arg is Map && arg.containsKey('velocity')) ? arg['velocity'] : Velocity.zero,
        primaryVelocity: (arg is Map && arg.containsKey('primaryVelocity')) ? arg['primaryVelocity'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/events.dart
PointerAddedEvent _createPointerAddedEventWidget([arg]) {
    return new PointerAddedEvent(
        timeStamp: (arg is Map && arg.containsKey('timeStamp')) ? arg['timeStamp'] : Duration.zero,
        kind: (arg is Map && arg.containsKey('kind')) ? arg['kind'] : PointerDeviceKind.touch,
        device: (arg is Map && arg.containsKey('device')) ? arg['device'] : 0,
        position: (arg is Map && arg.containsKey('position')) ? arg['position'] : Offset.zero,
        obscured: (arg is Map && arg.containsKey('obscured')) ? arg['obscured'] : false,
        pressureMin: (arg is Map && arg.containsKey('pressureMin')) ? arg['pressureMin'] : 1.0,
        pressureMax: (arg is Map && arg.containsKey('pressureMax')) ? arg['pressureMax'] : 1.0,
        distance: (arg is Map && arg.containsKey('distance')) ? arg['distance'] : 0.0,
        distanceMax: (arg is Map && arg.containsKey('distanceMax')) ? arg['distanceMax'] : 0.0,
        radiusMin: (arg is Map && arg.containsKey('radiusMin')) ? arg['radiusMin'] : 0.0,
        radiusMax: (arg is Map && arg.containsKey('radiusMax')) ? arg['radiusMax'] : 0.0,
        orientation: (arg is Map && arg.containsKey('orientation')) ? arg['orientation'] : 0.0,
        tilt: (arg is Map && arg.containsKey('tilt')) ? arg['tilt'] : 0.0
    );
}


// flutter/packages/flutter/lib/src/gestures/events.dart
PointerRemovedEvent _createPointerRemovedEventWidget([arg]) {
    return new PointerRemovedEvent(
        timeStamp: (arg is Map && arg.containsKey('timeStamp')) ? arg['timeStamp'] : Duration.zero,
        kind: (arg is Map && arg.containsKey('kind')) ? arg['kind'] : PointerDeviceKind.touch,
        device: (arg is Map && arg.containsKey('device')) ? arg['device'] : 0,
        obscured: (arg is Map && arg.containsKey('obscured')) ? arg['obscured'] : false,
        pressureMin: (arg is Map && arg.containsKey('pressureMin')) ? arg['pressureMin'] : 1.0,
        pressureMax: (arg is Map && arg.containsKey('pressureMax')) ? arg['pressureMax'] : 1.0,
        distanceMax: (arg is Map && arg.containsKey('distanceMax')) ? arg['distanceMax'] : 0.0,
        radiusMin: (arg is Map && arg.containsKey('radiusMin')) ? arg['radiusMin'] : 0.0,
        radiusMax: (arg is Map && arg.containsKey('radiusMax')) ? arg['radiusMax'] : 0.0
    );
}


// flutter/packages/flutter/lib/src/gestures/events.dart
PointerHoverEvent _createPointerHoverEventWidget([arg]) {
    return new PointerHoverEvent(
        timeStamp: (arg is Map && arg.containsKey('timeStamp')) ? arg['timeStamp'] : Duration.zero,
        kind: (arg is Map && arg.containsKey('kind')) ? arg['kind'] : PointerDeviceKind.touch,
        device: (arg is Map && arg.containsKey('device')) ? arg['device'] : 0,
        position: (arg is Map && arg.containsKey('position')) ? arg['position'] : Offset.zero,
        delta: (arg is Map && arg.containsKey('delta')) ? arg['delta'] : Offset.zero,
        buttons: (arg is Map && arg.containsKey('buttons')) ? arg['buttons'] : 0,
        obscured: (arg is Map && arg.containsKey('obscured')) ? arg['obscured'] : false,
        pressureMin: (arg is Map && arg.containsKey('pressureMin')) ? arg['pressureMin'] : 1.0,
        pressureMax: (arg is Map && arg.containsKey('pressureMax')) ? arg['pressureMax'] : 1.0,
        distance: (arg is Map && arg.containsKey('distance')) ? arg['distance'] : 0.0,
        distanceMax: (arg is Map && arg.containsKey('distanceMax')) ? arg['distanceMax'] : 0.0,
        radiusMajor: (arg is Map && arg.containsKey('radiusMajor')) ? arg['radiusMajor'] : 0.0,
        radiusMinor: (arg is Map && arg.containsKey('radiusMinor')) ? arg['radiusMinor'] : 0.0,
        radiusMin: (arg is Map && arg.containsKey('radiusMin')) ? arg['radiusMin'] : 0.0,
        radiusMax: (arg is Map && arg.containsKey('radiusMax')) ? arg['radiusMax'] : 0.0,
        orientation: (arg is Map && arg.containsKey('orientation')) ? arg['orientation'] : 0.0,
        tilt: (arg is Map && arg.containsKey('tilt')) ? arg['tilt'] : 0.0,
        synthesized: (arg is Map && arg.containsKey('synthesized')) ? arg['synthesized'] : false
    );
}


// flutter/packages/flutter/lib/src/gestures/events.dart
PointerDownEvent _createPointerDownEventWidget([arg]) {
    return new PointerDownEvent(
        timeStamp: (arg is Map && arg.containsKey('timeStamp')) ? arg['timeStamp'] : Duration.zero,
        pointer: (arg is Map && arg.containsKey('pointer')) ? arg['pointer'] : 0,
        kind: (arg is Map && arg.containsKey('kind')) ? arg['kind'] : PointerDeviceKind.touch,
        device: (arg is Map && arg.containsKey('device')) ? arg['device'] : 0,
        position: (arg is Map && arg.containsKey('position')) ? arg['position'] : Offset.zero,
        buttons: (arg is Map && arg.containsKey('buttons')) ? arg['buttons'] : 0,
        obscured: (arg is Map && arg.containsKey('obscured')) ? arg['obscured'] : false,
        pressure: (arg is Map && arg.containsKey('pressure')) ? arg['pressure'] : 1.0,
        pressureMin: (arg is Map && arg.containsKey('pressureMin')) ? arg['pressureMin'] : 1.0,
        pressureMax: (arg is Map && arg.containsKey('pressureMax')) ? arg['pressureMax'] : 1.0,
        distanceMax: (arg is Map && arg.containsKey('distanceMax')) ? arg['distanceMax'] : 0.0,
        radiusMajor: (arg is Map && arg.containsKey('radiusMajor')) ? arg['radiusMajor'] : 0.0,
        radiusMinor: (arg is Map && arg.containsKey('radiusMinor')) ? arg['radiusMinor'] : 0.0,
        radiusMin: (arg is Map && arg.containsKey('radiusMin')) ? arg['radiusMin'] : 0.0,
        radiusMax: (arg is Map && arg.containsKey('radiusMax')) ? arg['radiusMax'] : 0.0,
        orientation: (arg is Map && arg.containsKey('orientation')) ? arg['orientation'] : 0.0,
        tilt: (arg is Map && arg.containsKey('tilt')) ? arg['tilt'] : 0.0
    );
}


// flutter/packages/flutter/lib/src/gestures/events.dart
PointerMoveEvent _createPointerMoveEventWidget([arg]) {
    return new PointerMoveEvent(
        timeStamp: (arg is Map && arg.containsKey('timeStamp')) ? arg['timeStamp'] : Duration.zero,
        pointer: (arg is Map && arg.containsKey('pointer')) ? arg['pointer'] : 0,
        kind: (arg is Map && arg.containsKey('kind')) ? arg['kind'] : PointerDeviceKind.touch,
        device: (arg is Map && arg.containsKey('device')) ? arg['device'] : 0,
        position: (arg is Map && arg.containsKey('position')) ? arg['position'] : Offset.zero,
        delta: (arg is Map && arg.containsKey('delta')) ? arg['delta'] : Offset.zero,
        buttons: (arg is Map && arg.containsKey('buttons')) ? arg['buttons'] : 0,
        obscured: (arg is Map && arg.containsKey('obscured')) ? arg['obscured'] : false,
        pressure: (arg is Map && arg.containsKey('pressure')) ? arg['pressure'] : 1.0,
        pressureMin: (arg is Map && arg.containsKey('pressureMin')) ? arg['pressureMin'] : 1.0,
        pressureMax: (arg is Map && arg.containsKey('pressureMax')) ? arg['pressureMax'] : 1.0,
        distanceMax: (arg is Map && arg.containsKey('distanceMax')) ? arg['distanceMax'] : 0.0,
        radiusMajor: (arg is Map && arg.containsKey('radiusMajor')) ? arg['radiusMajor'] : 0.0,
        radiusMinor: (arg is Map && arg.containsKey('radiusMinor')) ? arg['radiusMinor'] : 0.0,
        radiusMin: (arg is Map && arg.containsKey('radiusMin')) ? arg['radiusMin'] : 0.0,
        radiusMax: (arg is Map && arg.containsKey('radiusMax')) ? arg['radiusMax'] : 0.0,
        orientation: (arg is Map && arg.containsKey('orientation')) ? arg['orientation'] : 0.0,
        tilt: (arg is Map && arg.containsKey('tilt')) ? arg['tilt'] : 0.0,
        synthesized: (arg is Map && arg.containsKey('synthesized')) ? arg['synthesized'] : false
    );
}


// flutter/packages/flutter/lib/src/gestures/events.dart
PointerUpEvent _createPointerUpEventWidget([arg]) {
    return new PointerUpEvent(
        timeStamp: (arg is Map && arg.containsKey('timeStamp')) ? arg['timeStamp'] : Duration.zero,
        pointer: (arg is Map && arg.containsKey('pointer')) ? arg['pointer'] : 0,
        kind: (arg is Map && arg.containsKey('kind')) ? arg['kind'] : PointerDeviceKind.touch,
        device: (arg is Map && arg.containsKey('device')) ? arg['device'] : 0,
        position: (arg is Map && arg.containsKey('position')) ? arg['position'] : Offset.zero,
        buttons: (arg is Map && arg.containsKey('buttons')) ? arg['buttons'] : 0,
        obscured: (arg is Map && arg.containsKey('obscured')) ? arg['obscured'] : false,
        pressureMin: (arg is Map && arg.containsKey('pressureMin')) ? arg['pressureMin'] : 1.0,
        pressureMax: (arg is Map && arg.containsKey('pressureMax')) ? arg['pressureMax'] : 1.0,
        distance: (arg is Map && arg.containsKey('distance')) ? arg['distance'] : 0.0,
        distanceMax: (arg is Map && arg.containsKey('distanceMax')) ? arg['distanceMax'] : 0.0,
        radiusMin: (arg is Map && arg.containsKey('radiusMin')) ? arg['radiusMin'] : 0.0,
        radiusMax: (arg is Map && arg.containsKey('radiusMax')) ? arg['radiusMax'] : 0.0,
        orientation: (arg is Map && arg.containsKey('orientation')) ? arg['orientation'] : 0.0,
        tilt: (arg is Map && arg.containsKey('tilt')) ? arg['tilt'] : 0.0
    );
}


// flutter/packages/flutter/lib/src/gestures/events.dart
PointerCancelEvent _createPointerCancelEventWidget([arg]) {
    return new PointerCancelEvent(
        timeStamp: (arg is Map && arg.containsKey('timeStamp')) ? arg['timeStamp'] : Duration.zero,
        pointer: (arg is Map && arg.containsKey('pointer')) ? arg['pointer'] : 0,
        kind: (arg is Map && arg.containsKey('kind')) ? arg['kind'] : PointerDeviceKind.touch,
        device: (arg is Map && arg.containsKey('device')) ? arg['device'] : 0,
        position: (arg is Map && arg.containsKey('position')) ? arg['position'] : Offset.zero,
        buttons: (arg is Map && arg.containsKey('buttons')) ? arg['buttons'] : 0,
        obscured: (arg is Map && arg.containsKey('obscured')) ? arg['obscured'] : false,
        pressureMin: (arg is Map && arg.containsKey('pressureMin')) ? arg['pressureMin'] : 1.0,
        pressureMax: (arg is Map && arg.containsKey('pressureMax')) ? arg['pressureMax'] : 1.0,
        distance: (arg is Map && arg.containsKey('distance')) ? arg['distance'] : 0.0,
        distanceMax: (arg is Map && arg.containsKey('distanceMax')) ? arg['distanceMax'] : 0.0,
        radiusMin: (arg is Map && arg.containsKey('radiusMin')) ? arg['radiusMin'] : 0.0,
        radiusMax: (arg is Map && arg.containsKey('radiusMax')) ? arg['radiusMax'] : 0.0,
        orientation: (arg is Map && arg.containsKey('orientation')) ? arg['orientation'] : 0.0,
        tilt: (arg is Map && arg.containsKey('tilt')) ? arg['tilt'] : 0.0
    );
}


// flutter/packages/flutter/lib/src/gestures/hit_test.dart
HitTestResult _createHitTestResultWidget([arg]) {
    return new HitTestResult(
        path: (arg is Map && arg.containsKey('path')) ? arg['path'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/long_press.dart
LongPressGestureRecognizer _createLongPressGestureRecognizerWidget([arg]) {
    return new LongPressGestureRecognizer(
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/monodrag.dart
VerticalDragGestureRecognizer _createVerticalDragGestureRecognizerWidget([arg]) {
    return new VerticalDragGestureRecognizer(
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/monodrag.dart
HorizontalDragGestureRecognizer _createHorizontalDragGestureRecognizerWidget([arg]) {
    return new HorizontalDragGestureRecognizer(
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/monodrag.dart
PanGestureRecognizer _createPanGestureRecognizerWidget([arg]) {
    return new PanGestureRecognizer(
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/multidrag.dart
ImmediateMultiDragGestureRecognizer _createImmediateMultiDragGestureRecognizerWidget([arg]) {
    return new ImmediateMultiDragGestureRecognizer(
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/multidrag.dart
HorizontalMultiDragGestureRecognizer _createHorizontalMultiDragGestureRecognizerWidget([arg]) {
    return new HorizontalMultiDragGestureRecognizer(
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/multidrag.dart
VerticalMultiDragGestureRecognizer _createVerticalMultiDragGestureRecognizerWidget([arg]) {
    return new VerticalMultiDragGestureRecognizer(
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/multidrag.dart
DelayedMultiDragGestureRecognizer _createDelayedMultiDragGestureRecognizerWidget([arg]) {
    return new DelayedMultiDragGestureRecognizer(
        delay: (arg is Map && arg.containsKey('delay')) ? arg['delay'] : kLongPressTimeout,
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/multitap.dart
DoubleTapGestureRecognizer _createDoubleTapGestureRecognizerWidget([arg]) {
    return new DoubleTapGestureRecognizer(
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/multitap.dart
MultiTapGestureRecognizer _createMultiTapGestureRecognizerWidget([arg]) {
    return new MultiTapGestureRecognizer(
        longTapDelay: (arg is Map && arg.containsKey('longTapDelay')) ? arg['longTapDelay'] : Duration.zero,
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/pointer_router.dart
FlutterErrorDetailsForPointerRouter _createFlutterErrorDetailsForPointerRouterWidget([arg]) {
    return new FlutterErrorDetailsForPointerRouter(
        exception: (arg is Map && arg.containsKey('exception')) ? arg['exception'] : null,
        stack: (arg is Map && arg.containsKey('stack')) ? arg['stack'] : null,
        library: (arg is Map && arg.containsKey('library')) ? arg['library'] : null,
        context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        router: (arg is Map && arg.containsKey('router')) ? arg['router'] : null,
        route: (arg is Map && arg.containsKey('route')) ? arg['route'] : null,
        event: (arg is Map && arg.containsKey('event')) ? arg['event'] : null,
        informationCollector: (arg is Map && arg.containsKey('informationCollector')) ? arg['informationCollector'] : null,
        silent: (arg is Map && arg.containsKey('silent')) ? arg['silent'] : false
    );
}


// flutter/packages/flutter/lib/src/gestures/scale.dart
ScaleStartDetails _createScaleStartDetailsWidget([arg]) {
    return new ScaleStartDetails(
        focalPoint: (arg is Map && arg.containsKey('focalPoint')) ? arg['focalPoint'] : Offset.zero
    );
}


// flutter/packages/flutter/lib/src/gestures/scale.dart
ScaleUpdateDetails _createScaleUpdateDetailsWidget([arg]) {
    return new ScaleUpdateDetails(
        focalPoint: (arg is Map && arg.containsKey('focalPoint')) ? arg['focalPoint'] : Offset.zero,
        scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/gestures/scale.dart
ScaleEndDetails _createScaleEndDetailsWidget([arg]) {
    return new ScaleEndDetails(
        velocity: (arg is Map && arg.containsKey('velocity')) ? arg['velocity'] : Velocity.zero
    );
}


// flutter/packages/flutter/lib/src/gestures/scale.dart
ScaleGestureRecognizer _createScaleGestureRecognizerWidget([arg]) {
    return new ScaleGestureRecognizer(
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/tap.dart
TapDownDetails _createTapDownDetailsWidget([arg]) {
    return new TapDownDetails(
        globalPosition: (arg is Map && arg.containsKey('globalPosition')) ? arg['globalPosition'] : Offset.zero
    );
}


// flutter/packages/flutter/lib/src/gestures/tap.dart
TapUpDetails _createTapUpDetailsWidget([arg]) {
    return new TapUpDetails(
        globalPosition: (arg is Map && arg.containsKey('globalPosition')) ? arg['globalPosition'] : Offset.zero
    );
}


// flutter/packages/flutter/lib/src/gestures/tap.dart
TapGestureRecognizer _createTapGestureRecognizerWidget([arg]) {
    return new TapGestureRecognizer(
        debugOwner: (arg is Map && arg.containsKey('debugOwner')) ? arg['debugOwner'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/velocity_tracker.dart
Velocity _createVelocityWidget([arg]) {
    return new Velocity(
        /*@required*/ pixelsPerSecond: (arg is Map && arg.containsKey('pixelsPerSecond')) ? arg['pixelsPerSecond'] : null
    );
}


// flutter/packages/flutter/lib/src/gestures/velocity_tracker.dart
VelocityEstimate _createVelocityEstimateWidget([arg]) {
    return new VelocityEstimate(
        /*@required*/ pixelsPerSecond: (arg is Map && arg.containsKey('pixelsPerSecond')) ? arg['pixelsPerSecond'] : null,
        /*@required*/ confidence: (arg is Map && arg.containsKey('confidence')) ? arg['confidence'] : null,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null,
        /*@required*/ offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : null
    );
}


// flutter/packages/flutter/lib/src/material/about.dart
AboutListTile _createAboutListTileWidget([arg]) {
    return new AboutListTile(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        icon: (arg is Map && arg.containsKey('icon')) ? arg['icon'] : const Icon(null),
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        applicationName: (arg is Map && arg.containsKey('applicationName')) ? arg['applicationName'] : null,
        applicationVersion: (arg is Map && arg.containsKey('applicationVersion')) ? arg['applicationVersion'] : null,
        applicationIcon: (arg is Map && arg.containsKey('applicationIcon')) ? arg['applicationIcon'] : null,
        applicationLegalese: (arg is Map && arg.containsKey('applicationLegalese')) ? arg['applicationLegalese'] : null,
        aboutBoxChildren: (arg is Map && arg.containsKey('aboutBoxChildren')) ? arg['aboutBoxChildren'] : null
    );
}


// flutter/packages/flutter/lib/src/material/about.dart
AboutDialog _createAboutDialogWidget([arg]) {
    return new AboutDialog(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        applicationName: (arg is Map && arg.containsKey('applicationName')) ? arg['applicationName'] : null,
        applicationVersion: (arg is Map && arg.containsKey('applicationVersion')) ? arg['applicationVersion'] : null,
        applicationIcon: (arg is Map && arg.containsKey('applicationIcon')) ? arg['applicationIcon'] : null,
        applicationLegalese: (arg is Map && arg.containsKey('applicationLegalese')) ? arg['applicationLegalese'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null
    );
}


// flutter/packages/flutter/lib/src/material/about.dart
LicensePage _createLicensePageWidget([arg]) {
    return new LicensePage(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        applicationName: (arg is Map && arg.containsKey('applicationName')) ? arg['applicationName'] : null,
        applicationVersion: (arg is Map && arg.containsKey('applicationVersion')) ? arg['applicationVersion'] : null,
        applicationLegalese: (arg is Map && arg.containsKey('applicationLegalese')) ? arg['applicationLegalese'] : null
    );
}


// flutter/packages/flutter/lib/src/material/animated_icons/animated_icons.dart
AnimatedIcon _createAnimatedIconWidget([arg]) {
    return new AnimatedIcon(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ icon: (arg is Map && arg.containsKey('icon')) ? arg['icon'] : null,
        /*@required*/ progress: (arg is Map && arg.containsKey('progress')) ? arg['progress'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        size: (arg is Map && arg.containsKey('size')) ? arg['size'] : null,
        semanticLabel: (arg is Map && arg.containsKey('semanticLabel')) ? arg['semanticLabel'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null
    );
}


// flutter/packages/flutter/lib/src/material/app_bar.dart
AppBar _createAppBarWidget([arg]) {
    return new AppBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        leading: (arg is Map && arg.containsKey('leading')) ? arg['leading'] : null,
        automaticallyImplyLeading: (arg is Map && arg.containsKey('automaticallyImplyLeading')) ? arg['automaticallyImplyLeading'] : true,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        actions: (arg is Map && arg.containsKey('actions')) ? arg['actions'] : null,
        flexibleSpace: (arg is Map && arg.containsKey('flexibleSpace')) ? arg['flexibleSpace'] : null,
        bottom: (arg is Map && arg.containsKey('bottom')) ? arg['bottom'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 4.0,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        brightness: (arg is Map && arg.containsKey('brightness')) ? arg['brightness'] : null,
        iconTheme: (arg is Map && arg.containsKey('iconTheme')) ? arg['iconTheme'] : null,
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : null,
        primary: (arg is Map && arg.containsKey('primary')) ? arg['primary'] : true,
        centerTitle: (arg is Map && arg.containsKey('centerTitle')) ? arg['centerTitle'] : null,
        titleSpacing: (arg is Map && arg.containsKey('titleSpacing')) ? arg['titleSpacing'] : NavigationToolbar.kMiddleSpacing,
        toolbarOpacity: (arg is Map && arg.containsKey('toolbarOpacity')) ? arg['toolbarOpacity'] : 1.0,
        bottomOpacity: (arg is Map && arg.containsKey('bottomOpacity')) ? arg['bottomOpacity'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/material/app_bar.dart
SliverAppBar _createSliverAppBarWidget([arg]) {
    return new SliverAppBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        leading: (arg is Map && arg.containsKey('leading')) ? arg['leading'] : null,
        automaticallyImplyLeading: (arg is Map && arg.containsKey('automaticallyImplyLeading')) ? arg['automaticallyImplyLeading'] : true,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        actions: (arg is Map && arg.containsKey('actions')) ? arg['actions'] : null,
        flexibleSpace: (arg is Map && arg.containsKey('flexibleSpace')) ? arg['flexibleSpace'] : null,
        bottom: (arg is Map && arg.containsKey('bottom')) ? arg['bottom'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : null,
        forceElevated: (arg is Map && arg.containsKey('forceElevated')) ? arg['forceElevated'] : false,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        brightness: (arg is Map && arg.containsKey('brightness')) ? arg['brightness'] : null,
        iconTheme: (arg is Map && arg.containsKey('iconTheme')) ? arg['iconTheme'] : null,
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : null,
        primary: (arg is Map && arg.containsKey('primary')) ? arg['primary'] : true,
        centerTitle: (arg is Map && arg.containsKey('centerTitle')) ? arg['centerTitle'] : null,
        titleSpacing: (arg is Map && arg.containsKey('titleSpacing')) ? arg['titleSpacing'] : NavigationToolbar.kMiddleSpacing,
        expandedHeight: (arg is Map && arg.containsKey('expandedHeight')) ? arg['expandedHeight'] : null,
        floating: (arg is Map && arg.containsKey('floating')) ? arg['floating'] : false,
        pinned: (arg is Map && arg.containsKey('pinned')) ? arg['pinned'] : false,
        snap: (arg is Map && arg.containsKey('snap')) ? arg['snap'] : false
    );
}


// flutter/packages/flutter/lib/src/material/app.dart
MaterialApp _createMaterialAppWidget([arg]) {
    return new MaterialApp(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        navigatorKey: (arg is Map && arg.containsKey('navigatorKey')) ? arg['navigatorKey'] : null,
        home: (arg is Map && arg.containsKey('home')) ? arg['home'] : null,
        routes: (arg is Map && arg.containsKey('routes')) ? arg['routes'] : const <String , WidgetBuilder>{},
        initialRoute: (arg is Map && arg.containsKey('initialRoute')) ? arg['initialRoute'] : null,
        onGenerateRoute: (arg is Map && arg.containsKey('onGenerateRoute')) ? arg['onGenerateRoute'] : null,
        onUnknownRoute: (arg is Map && arg.containsKey('onUnknownRoute')) ? arg['onUnknownRoute'] : null,
        navigatorObservers: (arg is Map && arg.containsKey('navigatorObservers')) ? arg['navigatorObservers'] : const <NavigatorObserver>[],
        builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : '',
        onGenerateTitle: (arg is Map && arg.containsKey('onGenerateTitle')) ? arg['onGenerateTitle'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        theme: (arg is Map && arg.containsKey('theme')) ? arg['theme'] : null,
        locale: (arg is Map && arg.containsKey('locale')) ? arg['locale'] : null,
        localizationsDelegates: (arg is Map && arg.containsKey('localizationsDelegates')) ? arg['localizationsDelegates'] : null,
        localeResolutionCallback: (arg is Map && arg.containsKey('localeResolutionCallback')) ? arg['localeResolutionCallback'] : null,
        supportedLocales: (arg is Map && arg.containsKey('supportedLocales')) ? arg['supportedLocales'] : const <Locale>[const Locale('en', 'US')],
        debugShowMaterialGrid: (arg is Map && arg.containsKey('debugShowMaterialGrid')) ? arg['debugShowMaterialGrid'] : false,
        showPerformanceOverlay: (arg is Map && arg.containsKey('showPerformanceOverlay')) ? arg['showPerformanceOverlay'] : false,
        checkerboardRasterCacheImages: (arg is Map && arg.containsKey('checkerboardRasterCacheImages')) ? arg['checkerboardRasterCacheImages'] : false,
        checkerboardOffscreenLayers: (arg is Map && arg.containsKey('checkerboardOffscreenLayers')) ? arg['checkerboardOffscreenLayers'] : false,
        showSemanticsDebugger: (arg is Map && arg.containsKey('showSemanticsDebugger')) ? arg['showSemanticsDebugger'] : false,
        debugShowCheckedModeBanner: (arg is Map && arg.containsKey('debugShowCheckedModeBanner')) ? arg['debugShowCheckedModeBanner'] : true
    );
}


// flutter/packages/flutter/lib/src/material/arc.dart
MaterialPointArcTween _createMaterialPointArcTweenWidget([arg]) {
    return new MaterialPointArcTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/material/arc.dart
MaterialRectArcTween _createMaterialRectArcTweenWidget([arg]) {
    return new MaterialRectArcTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/material/arc.dart
MaterialRectCenterArcTween _createMaterialRectCenterArcTweenWidget([arg]) {
    return new MaterialRectCenterArcTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/material/back_button.dart
BackButtonIcon _createBackButtonIconWidget([arg]) {
    return new BackButtonIcon(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null
    );
}


// flutter/packages/flutter/lib/src/material/back_button.dart
BackButton _createBackButtonWidget([arg]) {
    return new BackButton(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null
    );
}


// flutter/packages/flutter/lib/src/material/back_button.dart
CloseButton _createCloseButtonWidget([arg]) {
    return new CloseButton(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null
    );
}


// flutter/packages/flutter/lib/src/material/bottom_app_bar.dart
BottomAppBar _createBottomAppBarWidget([arg]) {
    return new BottomAppBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 8.0,
        hasNotch: (arg is Map && arg.containsKey('hasNotch')) ? arg['hasNotch'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/bottom_navigation_bar.dart
BottomNavigationBar _createBottomNavigationBarWidget([arg]) {
    return new BottomNavigationBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ items: (arg is Map && arg.containsKey('items')) ? arg['items'] : null,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null,
        currentIndex: (arg is Map && arg.containsKey('currentIndex')) ? arg['currentIndex'] : 0,
        type: (arg is Map && arg.containsKey('type')) ? arg['type'] : null,
        fixedColor: (arg is Map && arg.containsKey('fixedColor')) ? arg['fixedColor'] : null,
        iconSize: (arg is Map && arg.containsKey('iconSize')) ? arg['iconSize'] : 24.0
    );
}


// flutter/packages/flutter/lib/src/material/bottom_sheet.dart
BottomSheet _createBottomSheetWidget([arg]) {
    return new BottomSheet(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        animationController: (arg is Map && arg.containsKey('animationController')) ? arg['animationController'] : null,
        /*@required*/ onClosing: (arg is Map && arg.containsKey('onClosing')) ? arg['onClosing'] : null,
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null
    );
}


// flutter/packages/flutter/lib/src/material/button_bar.dart
ButtonBar _createButtonBarWidget([arg]) {
    return new ButtonBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : MainAxisAlignment.end,
        mainAxisSize: (arg is Map && arg.containsKey('mainAxisSize')) ? arg['mainAxisSize'] : MainAxisSize.max,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/material/button_theme.dart
ButtonTheme _createButtonThemeWidget([arg]) {
    return new ButtonTheme(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : ButtonTextTheme.normal,
        minWidth: (arg is Map && arg.containsKey('minWidth')) ? arg['minWidth'] : 88.0,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : 36.0,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        alignedDropdown: (arg is Map && arg.containsKey('alignedDropdown')) ? arg['alignedDropdown'] : false,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/button_theme.dart
ButtonTheme _createButtonTheme_fromButtonThemeDataWidget([arg]) {
    return ButtonTheme.fromButtonThemeData(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ data: (arg is Map && arg.containsKey('data')) ? arg['data'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/button_theme.dart
ButtonThemeData _createButtonThemeDataWidget([arg]) {
    return new ButtonThemeData(
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : ButtonTextTheme.normal,
        minWidth: (arg is Map && arg.containsKey('minWidth')) ? arg['minWidth'] : 88.0,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : 36.0,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        alignedDropdown: (arg is Map && arg.containsKey('alignedDropdown')) ? arg['alignedDropdown'] : false
    );
}


// flutter/packages/flutter/lib/src/material/button.dart
RawMaterialButton _createRawMaterialButtonWidget([arg]) {
    return new RawMaterialButton(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        onHighlightChanged: (arg is Map && arg.containsKey('onHighlightChanged')) ? arg['onHighlightChanged'] : null,
        textStyle: (arg is Map && arg.containsKey('textStyle')) ? arg['textStyle'] : null,
        fillColor: (arg is Map && arg.containsKey('fillColor')) ? arg['fillColor'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 2.0,
        highlightElevation: (arg is Map && arg.containsKey('highlightElevation')) ? arg['highlightElevation'] : 8.0,
        disabledElevation: (arg is Map && arg.containsKey('disabledElevation')) ? arg['disabledElevation'] : 0.0,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : EdgeInsets.zero,
        constraints: (arg is Map && arg.containsKey('constraints')) ? arg['constraints'] : const BoxConstraints(minWidth : 88.0, minHeight : 36.0),
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : const RoundedRectangleBorder(),
        animationDuration: (arg is Map && arg.containsKey('animationDuration')) ? arg['animationDuration'] : kThemeChangeDuration,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/button.dart
MaterialButton _createMaterialButtonWidget([arg]) {
    return new MaterialButton(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        colorBrightness: (arg is Map && arg.containsKey('colorBrightness')) ? arg['colorBrightness'] : null,
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : null,
        textColor: (arg is Map && arg.containsKey('textColor')) ? arg['textColor'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : null,
        highlightElevation: (arg is Map && arg.containsKey('highlightElevation')) ? arg['highlightElevation'] : null,
        minWidth: (arg is Map && arg.containsKey('minWidth')) ? arg['minWidth'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/card.dart
Card _createCardWidget([arg]) {
    return new Card(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        margin: (arg is Map && arg.containsKey('margin')) ? arg['margin'] : const EdgeInsets.all(4.0),
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/checkbox_list_tile.dart
CheckboxListTile _createCheckboxListTileWidget([arg]) {
    return new CheckboxListTile(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        activeColor: (arg is Map && arg.containsKey('activeColor')) ? arg['activeColor'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        subtitle: (arg is Map && arg.containsKey('subtitle')) ? arg['subtitle'] : null,
        isThreeLine: (arg is Map && arg.containsKey('isThreeLine')) ? arg['isThreeLine'] : false,
        dense: (arg is Map && arg.containsKey('dense')) ? arg['dense'] : null,
        secondary: (arg is Map && arg.containsKey('secondary')) ? arg['secondary'] : null,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : false,
        controlAffinity: (arg is Map && arg.containsKey('controlAffinity')) ? arg['controlAffinity'] : ListTileControlAffinity.platform
    );
}


// flutter/packages/flutter/lib/src/material/checkbox.dart
Checkbox _createCheckboxWidget([arg]) {
    return new Checkbox(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        tristate: (arg is Map && arg.containsKey('tristate')) ? arg['tristate'] : false,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        activeColor: (arg is Map && arg.containsKey('activeColor')) ? arg['activeColor'] : null
    );
}


// flutter/packages/flutter/lib/src/material/chip_theme.dart
ChipTheme _createChipThemeWidget([arg]) {
    return new ChipTheme(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ data: (arg is Map && arg.containsKey('data')) ? arg['data'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/chip_theme.dart
ChipThemeData _createChipThemeDataWidget([arg]) {
    return new ChipThemeData(
        /*@required*/ backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        deleteIconColor: (arg is Map && arg.containsKey('deleteIconColor')) ? arg['deleteIconColor'] : null,
        /*@required*/ disabledColor: (arg is Map && arg.containsKey('disabledColor')) ? arg['disabledColor'] : null,
        /*@required*/ selectedColor: (arg is Map && arg.containsKey('selectedColor')) ? arg['selectedColor'] : null,
        /*@required*/ secondarySelectedColor: (arg is Map && arg.containsKey('secondarySelectedColor')) ? arg['secondarySelectedColor'] : null,
        /*@required*/ labelPadding: (arg is Map && arg.containsKey('labelPadding')) ? arg['labelPadding'] : null,
        /*@required*/ padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        /*@required*/ shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        /*@required*/ labelStyle: (arg is Map && arg.containsKey('labelStyle')) ? arg['labelStyle'] : null,
        /*@required*/ secondaryLabelStyle: (arg is Map && arg.containsKey('secondaryLabelStyle')) ? arg['secondaryLabelStyle'] : null,
        /*@required*/ brightness: (arg is Map && arg.containsKey('brightness')) ? arg['brightness'] : null
    );
}


// flutter/packages/flutter/lib/src/material/chip_theme.dart
ChipThemeData _createChipThemeData_fromDefaultsWidget([arg]) {
    return ChipThemeData.fromDefaults(
        brightness: (arg is Map && arg.containsKey('brightness')) ? arg['brightness'] : null,
        primaryColor: (arg is Map && arg.containsKey('primaryColor')) ? arg['primaryColor'] : null,
        /*@required*/ secondaryColor: (arg is Map && arg.containsKey('secondaryColor')) ? arg['secondaryColor'] : null,
        /*@required*/ labelStyle: (arg is Map && arg.containsKey('labelStyle')) ? arg['labelStyle'] : null
    );
}


// flutter/packages/flutter/lib/src/material/chip.dart
Chip _createChipWidget([arg]) {
    return new Chip(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        avatar: (arg is Map && arg.containsKey('avatar')) ? arg['avatar'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        labelStyle: (arg is Map && arg.containsKey('labelStyle')) ? arg['labelStyle'] : null,
        labelPadding: (arg is Map && arg.containsKey('labelPadding')) ? arg['labelPadding'] : null,
        deleteIcon: (arg is Map && arg.containsKey('deleteIcon')) ? arg['deleteIcon'] : null,
        onDeleted: (arg is Map && arg.containsKey('onDeleted')) ? arg['onDeleted'] : null,
        deleteIconColor: (arg is Map && arg.containsKey('deleteIconColor')) ? arg['deleteIconColor'] : null,
        deleteButtonTooltipMessage: (arg is Map && arg.containsKey('deleteButtonTooltipMessage')) ? arg['deleteButtonTooltipMessage'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null
    );
}


// flutter/packages/flutter/lib/src/material/chip.dart
InputChip _createInputChipWidget([arg]) {
    return new InputChip(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        avatar: (arg is Map && arg.containsKey('avatar')) ? arg['avatar'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        labelStyle: (arg is Map && arg.containsKey('labelStyle')) ? arg['labelStyle'] : null,
        labelPadding: (arg is Map && arg.containsKey('labelPadding')) ? arg['labelPadding'] : null,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : false,
        isEnabled: (arg is Map && arg.containsKey('isEnabled')) ? arg['isEnabled'] : true,
        onSelected: (arg is Map && arg.containsKey('onSelected')) ? arg['onSelected'] : null,
        deleteIcon: (arg is Map && arg.containsKey('deleteIcon')) ? arg['deleteIcon'] : null,
        onDeleted: (arg is Map && arg.containsKey('onDeleted')) ? arg['onDeleted'] : null,
        deleteIconColor: (arg is Map && arg.containsKey('deleteIconColor')) ? arg['deleteIconColor'] : null,
        deleteButtonTooltipMessage: (arg is Map && arg.containsKey('deleteButtonTooltipMessage')) ? arg['deleteButtonTooltipMessage'] : null,
        onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        disabledColor: (arg is Map && arg.containsKey('disabledColor')) ? arg['disabledColor'] : null,
        selectedColor: (arg is Map && arg.containsKey('selectedColor')) ? arg['selectedColor'] : null,
        tooltip: (arg is Map && arg.containsKey('tooltip')) ? arg['tooltip'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null
    );
}


// flutter/packages/flutter/lib/src/material/chip.dart
ChoiceChip _createChoiceChipWidget([arg]) {
    return new ChoiceChip(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        avatar: (arg is Map && arg.containsKey('avatar')) ? arg['avatar'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        labelStyle: (arg is Map && arg.containsKey('labelStyle')) ? arg['labelStyle'] : null,
        labelPadding: (arg is Map && arg.containsKey('labelPadding')) ? arg['labelPadding'] : null,
        onSelected: (arg is Map && arg.containsKey('onSelected')) ? arg['onSelected'] : null,
        /*@required*/ selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : null,
        selectedColor: (arg is Map && arg.containsKey('selectedColor')) ? arg['selectedColor'] : null,
        disabledColor: (arg is Map && arg.containsKey('disabledColor')) ? arg['disabledColor'] : null,
        tooltip: (arg is Map && arg.containsKey('tooltip')) ? arg['tooltip'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null
    );
}


// flutter/packages/flutter/lib/src/material/chip.dart
FilterChip _createFilterChipWidget([arg]) {
    return new FilterChip(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        avatar: (arg is Map && arg.containsKey('avatar')) ? arg['avatar'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        labelStyle: (arg is Map && arg.containsKey('labelStyle')) ? arg['labelStyle'] : null,
        labelPadding: (arg is Map && arg.containsKey('labelPadding')) ? arg['labelPadding'] : null,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : false,
        /*@required*/ onSelected: (arg is Map && arg.containsKey('onSelected')) ? arg['onSelected'] : null,
        disabledColor: (arg is Map && arg.containsKey('disabledColor')) ? arg['disabledColor'] : null,
        selectedColor: (arg is Map && arg.containsKey('selectedColor')) ? arg['selectedColor'] : null,
        tooltip: (arg is Map && arg.containsKey('tooltip')) ? arg['tooltip'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null
    );
}


// flutter/packages/flutter/lib/src/material/chip.dart
ActionChip _createActionChipWidget([arg]) {
    return new ActionChip(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        avatar: (arg is Map && arg.containsKey('avatar')) ? arg['avatar'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        labelStyle: (arg is Map && arg.containsKey('labelStyle')) ? arg['labelStyle'] : null,
        labelPadding: (arg is Map && arg.containsKey('labelPadding')) ? arg['labelPadding'] : null,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        tooltip: (arg is Map && arg.containsKey('tooltip')) ? arg['tooltip'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null
    );
}


// flutter/packages/flutter/lib/src/material/chip.dart
RawChip _createRawChipWidget([arg]) {
    return new RawChip(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        avatar: (arg is Map && arg.containsKey('avatar')) ? arg['avatar'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        labelStyle: (arg is Map && arg.containsKey('labelStyle')) ? arg['labelStyle'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        labelPadding: (arg is Map && arg.containsKey('labelPadding')) ? arg['labelPadding'] : null,
        deleteIcon: (arg is Map && arg.containsKey('deleteIcon')) ? arg['deleteIcon'] : null,
        onDeleted: (arg is Map && arg.containsKey('onDeleted')) ? arg['onDeleted'] : null,
        deleteIconColor: (arg is Map && arg.containsKey('deleteIconColor')) ? arg['deleteIconColor'] : null,
        deleteButtonTooltipMessage: (arg is Map && arg.containsKey('deleteButtonTooltipMessage')) ? arg['deleteButtonTooltipMessage'] : null,
        onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        onSelected: (arg is Map && arg.containsKey('onSelected')) ? arg['onSelected'] : null,
        tapEnabled: (arg is Map && arg.containsKey('tapEnabled')) ? arg['tapEnabled'] : true,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : null,
        showCheckmark: (arg is Map && arg.containsKey('showCheckmark')) ? arg['showCheckmark'] : true,
        isEnabled: (arg is Map && arg.containsKey('isEnabled')) ? arg['isEnabled'] : true,
        disabledColor: (arg is Map && arg.containsKey('disabledColor')) ? arg['disabledColor'] : null,
        selectedColor: (arg is Map && arg.containsKey('selectedColor')) ? arg['selectedColor'] : null,
        tooltip: (arg is Map && arg.containsKey('tooltip')) ? arg['tooltip'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null
    );
}


// flutter/packages/flutter/lib/src/material/circle_avatar.dart
CircleAvatar _createCircleAvatarWidget([arg]) {
    return new CircleAvatar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        backgroundImage: (arg is Map && arg.containsKey('backgroundImage')) ? arg['backgroundImage'] : null,
        foregroundColor: (arg is Map && arg.containsKey('foregroundColor')) ? arg['foregroundColor'] : null,
        radius: (arg is Map && arg.containsKey('radius')) ? arg['radius'] : null,
        minRadius: (arg is Map && arg.containsKey('minRadius')) ? arg['minRadius'] : null,
        maxRadius: (arg is Map && arg.containsKey('maxRadius')) ? arg['maxRadius'] : null
    );
}


// flutter/packages/flutter/lib/src/material/data_table.dart
DataColumn _createDataColumnWidget([arg]) {
    return new DataColumn(
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        tooltip: (arg is Map && arg.containsKey('tooltip')) ? arg['tooltip'] : null,
        numeric: (arg is Map && arg.containsKey('numeric')) ? arg['numeric'] : false,
        onSort: (arg is Map && arg.containsKey('onSort')) ? arg['onSort'] : null
    );
}


// flutter/packages/flutter/lib/src/material/data_table.dart
DataRow _createDataRowWidget([arg]) {
    return new DataRow(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : false,
        onSelectChanged: (arg is Map && arg.containsKey('onSelectChanged')) ? arg['onSelectChanged'] : null,
        /*@required*/ cells: (arg is Map && arg.containsKey('cells')) ? arg['cells'] : null
    );
}


// flutter/packages/flutter/lib/src/material/data_table.dart
DataRow _createDataRow_byIndexWidget([arg]) {
    return DataRow.byIndex(
        index: (arg is Map && arg.containsKey('index')) ? arg['index'] : null,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : false,
        onSelectChanged: (arg is Map && arg.containsKey('onSelectChanged')) ? arg['onSelectChanged'] : null,
        /*@required*/ cells: (arg is Map && arg.containsKey('cells')) ? arg['cells'] : null
    );
}


// flutter/packages/flutter/lib/src/material/data_table.dart
DataCell _createDataCellWidget(data, [arg]) {
    return new DataCell(
        data,
        placeholder: (arg is Map && arg.containsKey('placeholder')) ? arg['placeholder'] : false,
        showEditIcon: (arg is Map && arg.containsKey('showEditIcon')) ? arg['showEditIcon'] : false,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null
    );
}


// flutter/packages/flutter/lib/src/material/data_table.dart
DataTable _createDataTableWidget([arg]) {
    return new DataTable(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ columns: (arg is Map && arg.containsKey('columns')) ? arg['columns'] : null,
        sortColumnIndex: (arg is Map && arg.containsKey('sortColumnIndex')) ? arg['sortColumnIndex'] : null,
        sortAscending: (arg is Map && arg.containsKey('sortAscending')) ? arg['sortAscending'] : true,
        onSelectAll: (arg is Map && arg.containsKey('onSelectAll')) ? arg['onSelectAll'] : null,
        /*@required*/ rows: (arg is Map && arg.containsKey('rows')) ? arg['rows'] : null
    );
}


// flutter/packages/flutter/lib/src/material/data_table.dart
TableRowInkWell _createTableRowInkWellWidget([arg]) {
    return new TableRowInkWell(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null,
        onDoubleTap: (arg is Map && arg.containsKey('onDoubleTap')) ? arg['onDoubleTap'] : null,
        onLongPress: (arg is Map && arg.containsKey('onLongPress')) ? arg['onLongPress'] : null,
        onHighlightChanged: (arg is Map && arg.containsKey('onHighlightChanged')) ? arg['onHighlightChanged'] : null
    );
}


// flutter/packages/flutter/lib/src/material/date_picker.dart
DayPicker _createDayPickerWidget([arg]) {
    return new DayPicker(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ selectedDate: (arg is Map && arg.containsKey('selectedDate')) ? arg['selectedDate'] : null,
        /*@required*/ currentDate: (arg is Map && arg.containsKey('currentDate')) ? arg['currentDate'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        /*@required*/ firstDate: (arg is Map && arg.containsKey('firstDate')) ? arg['firstDate'] : null,
        /*@required*/ lastDate: (arg is Map && arg.containsKey('lastDate')) ? arg['lastDate'] : null,
        /*@required*/ displayedMonth: (arg is Map && arg.containsKey('displayedMonth')) ? arg['displayedMonth'] : null,
        selectableDayPredicate: (arg is Map && arg.containsKey('selectableDayPredicate')) ? arg['selectableDayPredicate'] : null
    );
}


// flutter/packages/flutter/lib/src/material/date_picker.dart
MonthPicker _createMonthPickerWidget([arg]) {
    return new MonthPicker(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ selectedDate: (arg is Map && arg.containsKey('selectedDate')) ? arg['selectedDate'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        /*@required*/ firstDate: (arg is Map && arg.containsKey('firstDate')) ? arg['firstDate'] : null,
        /*@required*/ lastDate: (arg is Map && arg.containsKey('lastDate')) ? arg['lastDate'] : null,
        selectableDayPredicate: (arg is Map && arg.containsKey('selectableDayPredicate')) ? arg['selectableDayPredicate'] : null
    );
}


// flutter/packages/flutter/lib/src/material/date_picker.dart
YearPicker _createYearPickerWidget([arg]) {
    return new YearPicker(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ selectedDate: (arg is Map && arg.containsKey('selectedDate')) ? arg['selectedDate'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        /*@required*/ firstDate: (arg is Map && arg.containsKey('firstDate')) ? arg['firstDate'] : null,
        /*@required*/ lastDate: (arg is Map && arg.containsKey('lastDate')) ? arg['lastDate'] : null
    );
}


// flutter/packages/flutter/lib/src/material/dialog.dart
Dialog _createDialogWidget([arg]) {
    return new Dialog(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        insetAnimationDuration: (arg is Map && arg.containsKey('insetAnimationDuration')) ? arg['insetAnimationDuration'] : const Duration(milliseconds : 100),
        insetAnimationCurve: (arg is Map && arg.containsKey('insetAnimationCurve')) ? arg['insetAnimationCurve'] : Curves.decelerate
    );
}


// flutter/packages/flutter/lib/src/material/dialog.dart
AlertDialog _createAlertDialogWidget([arg]) {
    return new AlertDialog(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        titlePadding: (arg is Map && arg.containsKey('titlePadding')) ? arg['titlePadding'] : null,
        content: (arg is Map && arg.containsKey('content')) ? arg['content'] : null,
        contentPadding: (arg is Map && arg.containsKey('contentPadding')) ? arg['contentPadding'] : const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        actions: (arg is Map && arg.containsKey('actions')) ? arg['actions'] : null,
        semanticLabel: (arg is Map && arg.containsKey('semanticLabel')) ? arg['semanticLabel'] : null
    );
}


// flutter/packages/flutter/lib/src/material/dialog.dart
SimpleDialogOption _createSimpleDialogOptionWidget([arg]) {
    return new SimpleDialogOption(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/dialog.dart
SimpleDialog _createSimpleDialogWidget([arg]) {
    return new SimpleDialog(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        titlePadding: (arg is Map && arg.containsKey('titlePadding')) ? arg['titlePadding'] : const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        contentPadding: (arg is Map && arg.containsKey('contentPadding')) ? arg['contentPadding'] : const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),
        semanticLabel: (arg is Map && arg.containsKey('semanticLabel')) ? arg['semanticLabel'] : null
    );
}


// flutter/packages/flutter/lib/src/material/divider.dart
Divider _createDividerWidget([arg]) {
    return new Divider(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : 16.0,
        indent: (arg is Map && arg.containsKey('indent')) ? arg['indent'] : 0.0,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null
    );
}


// flutter/packages/flutter/lib/src/material/drawer_header.dart
DrawerHeader _createDrawerHeaderWidget([arg]) {
    return new DrawerHeader(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        margin: (arg is Map && arg.containsKey('margin')) ? arg['margin'] : const EdgeInsets.only(bottom : 8.0),
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
        duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : const Duration(milliseconds : 250),
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.fastOutSlowIn,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/drawer.dart
Drawer _createDrawerWidget([arg]) {
    return new Drawer(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 16.0,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        semanticLabel: (arg is Map && arg.containsKey('semanticLabel')) ? arg['semanticLabel'] : null
    );
}


// flutter/packages/flutter/lib/src/material/drawer.dart
DrawerController _createDrawerControllerWidget([arg]) {
    return new DrawerController(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : null
    );
}


// flutter/packages/flutter/lib/src/material/dropdown.dart
DropdownMenuItem _createDropdownMenuItemWidget([arg]) {
    return new DropdownMenuItem(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/dropdown.dart
DropdownButtonHideUnderline _createDropdownButtonHideUnderlineWidget([arg]) {
    return new DropdownButtonHideUnderline(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/dropdown.dart
DropdownButton _createDropdownButtonWidget([arg]) {
    return new DropdownButton(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ items: (arg is Map && arg.containsKey('items')) ? arg['items'] : null,
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        hint: (arg is Map && arg.containsKey('hint')) ? arg['hint'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 8,
        style: (arg is Map && arg.containsKey('style')) ? arg['style'] : null,
        iconSize: (arg is Map && arg.containsKey('iconSize')) ? arg['iconSize'] : 24.0,
        isDense: (arg is Map && arg.containsKey('isDense')) ? arg['isDense'] : false
    );
}


// flutter/packages/flutter/lib/src/material/expand_icon.dart
ExpandIcon _createExpandIconWidget([arg]) {
    return new ExpandIcon(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        isExpanded: (arg is Map && arg.containsKey('isExpanded')) ? arg['isExpanded'] : false,
        size: (arg is Map && arg.containsKey('size')) ? arg['size'] : 24.0,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : const EdgeInsets.all(8.0)
    );
}


// flutter/packages/flutter/lib/src/material/expansion_panel.dart
ExpansionPanel _createExpansionPanelWidget([arg]) {
    return new ExpansionPanel(
        /*@required*/ headerBuilder: (arg is Map && arg.containsKey('headerBuilder')) ? arg['headerBuilder'] : null,
        /*@required*/ body: (arg is Map && arg.containsKey('body')) ? arg['body'] : null,
        isExpanded: (arg is Map && arg.containsKey('isExpanded')) ? arg['isExpanded'] : false
    );
}


// flutter/packages/flutter/lib/src/material/expansion_panel.dart
ExpansionPanelList _createExpansionPanelListWidget([arg]) {
    return new ExpansionPanelList(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <ExpansionPanel>[],
        expansionCallback: (arg is Map && arg.containsKey('expansionCallback')) ? arg['expansionCallback'] : null,
        animationDuration: (arg is Map && arg.containsKey('animationDuration')) ? arg['animationDuration'] : kThemeAnimationDuration
    );
}


// flutter/packages/flutter/lib/src/material/expansion_tile.dart
ExpansionTile _createExpansionTileWidget([arg]) {
    return new ExpansionTile(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        leading: (arg is Map && arg.containsKey('leading')) ? arg['leading'] : null,
        /*@required*/ title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        onExpansionChanged: (arg is Map && arg.containsKey('onExpansionChanged')) ? arg['onExpansionChanged'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[],
        trailing: (arg is Map && arg.containsKey('trailing')) ? arg['trailing'] : null,
        initiallyExpanded: (arg is Map && arg.containsKey('initiallyExpanded')) ? arg['initiallyExpanded'] : false
    );
}


// flutter/packages/flutter/lib/src/material/flat_button.dart
FlatButton _createFlatButtonWidget([arg]) {
    return new FlatButton(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        onHighlightChanged: (arg is Map && arg.containsKey('onHighlightChanged')) ? arg['onHighlightChanged'] : null,
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : null,
        textColor: (arg is Map && arg.containsKey('textColor')) ? arg['textColor'] : null,
        disabledTextColor: (arg is Map && arg.containsKey('disabledTextColor')) ? arg['disabledTextColor'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        disabledColor: (arg is Map && arg.containsKey('disabledColor')) ? arg['disabledColor'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        colorBrightness: (arg is Map && arg.containsKey('colorBrightness')) ? arg['colorBrightness'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/flat_button.dart
FlatButton _createFlatButton_iconWidget([arg]) {
    return FlatButton.icon(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        onHighlightChanged: (arg is Map && arg.containsKey('onHighlightChanged')) ? arg['onHighlightChanged'] : null,
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : null,
        textColor: (arg is Map && arg.containsKey('textColor')) ? arg['textColor'] : null,
        disabledTextColor: (arg is Map && arg.containsKey('disabledTextColor')) ? arg['disabledTextColor'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        disabledColor: (arg is Map && arg.containsKey('disabledColor')) ? arg['disabledColor'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        colorBrightness: (arg is Map && arg.containsKey('colorBrightness')) ? arg['colorBrightness'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        /*@required*/ icon: (arg is Map && arg.containsKey('icon')) ? arg['icon'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null
    );
}


// flutter/packages/flutter/lib/src/material/flexible_space_bar.dart
FlexibleSpaceBar _createFlexibleSpaceBarWidget([arg]) {
    return new FlexibleSpaceBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        background: (arg is Map && arg.containsKey('background')) ? arg['background'] : null,
        centerTitle: (arg is Map && arg.containsKey('centerTitle')) ? arg['centerTitle'] : null
    );
}


// flutter/packages/flutter/lib/src/material/floating_action_button.dart
FloatingActionButton _createFloatingActionButtonWidget([arg]) {
    return new FloatingActionButton(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        tooltip: (arg is Map && arg.containsKey('tooltip')) ? arg['tooltip'] : null,
        foregroundColor: (arg is Map && arg.containsKey('foregroundColor')) ? arg['foregroundColor'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        heroTag: (arg is Map && arg.containsKey('heroTag')) ? arg['heroTag'] : const _DefaultHeroTag(),
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 6.0,
        highlightElevation: (arg is Map && arg.containsKey('highlightElevation')) ? arg['highlightElevation'] : 12.0,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        mini: (arg is Map && arg.containsKey('mini')) ? arg['mini'] : false,
        notchMargin: (arg is Map && arg.containsKey('notchMargin')) ? arg['notchMargin'] : 4.0,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : const CircleBorder(),
        isExtended: (arg is Map && arg.containsKey('isExtended')) ? arg['isExtended'] : false
    );
}


// flutter/packages/flutter/lib/src/material/floating_action_button.dart
FloatingActionButton _createFloatingActionButton_extendedWidget([arg]) {
    return FloatingActionButton.extended(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        tooltip: (arg is Map && arg.containsKey('tooltip')) ? arg['tooltip'] : null,
        foregroundColor: (arg is Map && arg.containsKey('foregroundColor')) ? arg['foregroundColor'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        heroTag: (arg is Map && arg.containsKey('heroTag')) ? arg['heroTag'] : const _DefaultHeroTag(),
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 6.0,
        highlightElevation: (arg is Map && arg.containsKey('highlightElevation')) ? arg['highlightElevation'] : 12.0,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        notchMargin: (arg is Map && arg.containsKey('notchMargin')) ? arg['notchMargin'] : 4.0,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : const StadiumBorder(),
        isExtended: (arg is Map && arg.containsKey('isExtended')) ? arg['isExtended'] : true,
        /*@required*/ icon: (arg is Map && arg.containsKey('icon')) ? arg['icon'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null
    );
}


// flutter/packages/flutter/lib/src/material/flutter_logo.dart
FlutterLogo _createFlutterLogoWidget([arg]) {
    return new FlutterLogo(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        size: (arg is Map && arg.containsKey('size')) ? arg['size'] : null,
        colors: (arg is Map && arg.containsKey('colors')) ? arg['colors'] : null,
        textColor: (arg is Map && arg.containsKey('textColor')) ? arg['textColor'] : const Color(0xFF616161),
        style: (arg is Map && arg.containsKey('style')) ? arg['style'] : FlutterLogoStyle.markOnly,
        duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : const Duration(milliseconds : 750),
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.fastOutSlowIn
    );
}


// flutter/packages/flutter/lib/src/material/grid_tile_bar.dart
GridTileBar _createGridTileBarWidget([arg]) {
    return new GridTileBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        leading: (arg is Map && arg.containsKey('leading')) ? arg['leading'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        subtitle: (arg is Map && arg.containsKey('subtitle')) ? arg['subtitle'] : null,
        trailing: (arg is Map && arg.containsKey('trailing')) ? arg['trailing'] : null
    );
}


// flutter/packages/flutter/lib/src/material/grid_tile.dart
GridTile _createGridTileWidget([arg]) {
    return new GridTile(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        header: (arg is Map && arg.containsKey('header')) ? arg['header'] : null,
        footer: (arg is Map && arg.containsKey('footer')) ? arg['footer'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/icon_button.dart
IconButton _createIconButtonWidget([arg]) {
    return new IconButton(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        iconSize: (arg is Map && arg.containsKey('iconSize')) ? arg['iconSize'] : 24.0,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : const EdgeInsets.all(8.0),
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        /*@required*/ icon: (arg is Map && arg.containsKey('icon')) ? arg['icon'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        disabledColor: (arg is Map && arg.containsKey('disabledColor')) ? arg['disabledColor'] : null,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        tooltip: (arg is Map && arg.containsKey('tooltip')) ? arg['tooltip'] : null
    );
}


// flutter/packages/flutter/lib/src/material/ink_decoration.dart
Ink _createInkWidget([arg]) {
    return new Ink(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/ink_decoration.dart
Ink _createInk_imageWidget([arg]) {
    return Ink.image(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        /*@required*/ image: (arg is Map && arg.containsKey('image')) ? arg['image'] : null,
        colorFilter: (arg is Map && arg.containsKey('colorFilter')) ? arg['colorFilter'] : null,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        centerSlice: (arg is Map && arg.containsKey('centerSlice')) ? arg['centerSlice'] : null,
        repeat: (arg is Map && arg.containsKey('repeat')) ? arg['repeat'] : ImageRepeat.noRepeat,
        matchTextDirection: (arg is Map && arg.containsKey('matchTextDirection')) ? arg['matchTextDirection'] : false,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/ink_decoration.dart
InkDecoration _createInkDecorationWidget([arg]) {
    return new InkDecoration(
        /*@required*/ decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        /*@required*/ configuration: (arg is Map && arg.containsKey('configuration')) ? arg['configuration'] : null,
        /*@required*/ controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        /*@required*/ referenceBox: (arg is Map && arg.containsKey('referenceBox')) ? arg['referenceBox'] : null,
        onRemoved: (arg is Map && arg.containsKey('onRemoved')) ? arg['onRemoved'] : null
    );
}


// flutter/packages/flutter/lib/src/material/ink_highlight.dart
InkHighlight _createInkHighlightWidget([arg]) {
    return new InkHighlight(
        /*@required*/ controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        /*@required*/ referenceBox: (arg is Map && arg.containsKey('referenceBox')) ? arg['referenceBox'] : null,
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : BoxShape.rectangle,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : null,
        rectCallback: (arg is Map && arg.containsKey('rectCallback')) ? arg['rectCallback'] : null,
        onRemoved: (arg is Map && arg.containsKey('onRemoved')) ? arg['onRemoved'] : null
    );
}


// flutter/packages/flutter/lib/src/material/ink_ripple.dart
InkRipple _createInkRippleWidget([arg]) {
    return new InkRipple(
        /*@required*/ controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        /*@required*/ referenceBox: (arg is Map && arg.containsKey('referenceBox')) ? arg['referenceBox'] : null,
        /*@required*/ position: (arg is Map && arg.containsKey('position')) ? arg['position'] : null,
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        containedInkWell: (arg is Map && arg.containsKey('containedInkWell')) ? arg['containedInkWell'] : false,
        rectCallback: (arg is Map && arg.containsKey('rectCallback')) ? arg['rectCallback'] : null,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : null,
        radius: (arg is Map && arg.containsKey('radius')) ? arg['radius'] : null,
        onRemoved: (arg is Map && arg.containsKey('onRemoved')) ? arg['onRemoved'] : null
    );
}


// flutter/packages/flutter/lib/src/material/ink_splash.dart
InkSplash _createInkSplashWidget([arg]) {
    return new InkSplash(
        /*@required*/ controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        /*@required*/ referenceBox: (arg is Map && arg.containsKey('referenceBox')) ? arg['referenceBox'] : null,
        position: (arg is Map && arg.containsKey('position')) ? arg['position'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        containedInkWell: (arg is Map && arg.containsKey('containedInkWell')) ? arg['containedInkWell'] : false,
        rectCallback: (arg is Map && arg.containsKey('rectCallback')) ? arg['rectCallback'] : null,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : null,
        radius: (arg is Map && arg.containsKey('radius')) ? arg['radius'] : null,
        onRemoved: (arg is Map && arg.containsKey('onRemoved')) ? arg['onRemoved'] : null
    );
}


// flutter/packages/flutter/lib/src/material/ink_well.dart
InkResponse _createInkResponseWidget([arg]) {
    return new InkResponse(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null,
        onTapDown: (arg is Map && arg.containsKey('onTapDown')) ? arg['onTapDown'] : null,
        onTapCancel: (arg is Map && arg.containsKey('onTapCancel')) ? arg['onTapCancel'] : null,
        onDoubleTap: (arg is Map && arg.containsKey('onDoubleTap')) ? arg['onDoubleTap'] : null,
        onLongPress: (arg is Map && arg.containsKey('onLongPress')) ? arg['onLongPress'] : null,
        onHighlightChanged: (arg is Map && arg.containsKey('onHighlightChanged')) ? arg['onHighlightChanged'] : null,
        containedInkWell: (arg is Map && arg.containsKey('containedInkWell')) ? arg['containedInkWell'] : false,
        highlightShape: (arg is Map && arg.containsKey('highlightShape')) ? arg['highlightShape'] : BoxShape.circle,
        radius: (arg is Map && arg.containsKey('radius')) ? arg['radius'] : null,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        splashFactory: (arg is Map && arg.containsKey('splashFactory')) ? arg['splashFactory'] : null,
        enableFeedback: (arg is Map && arg.containsKey('enableFeedback')) ? arg['enableFeedback'] : true,
        excludeFromSemantics: (arg is Map && arg.containsKey('excludeFromSemantics')) ? arg['excludeFromSemantics'] : false
    );
}


// flutter/packages/flutter/lib/src/material/ink_well.dart
InkWell _createInkWellWidget([arg]) {
    return new InkWell(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null,
        onDoubleTap: (arg is Map && arg.containsKey('onDoubleTap')) ? arg['onDoubleTap'] : null,
        onLongPress: (arg is Map && arg.containsKey('onLongPress')) ? arg['onLongPress'] : null,
        onTapDown: (arg is Map && arg.containsKey('onTapDown')) ? arg['onTapDown'] : null,
        onTapCancel: (arg is Map && arg.containsKey('onTapCancel')) ? arg['onTapCancel'] : null,
        onHighlightChanged: (arg is Map && arg.containsKey('onHighlightChanged')) ? arg['onHighlightChanged'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        splashFactory: (arg is Map && arg.containsKey('splashFactory')) ? arg['splashFactory'] : null,
        radius: (arg is Map && arg.containsKey('radius')) ? arg['radius'] : null,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : null,
        enableFeedback: (arg is Map && arg.containsKey('enableFeedback')) ? arg['enableFeedback'] : true,
        excludeFromSemantics: (arg is Map && arg.containsKey('excludeFromSemantics')) ? arg['excludeFromSemantics'] : false
    );
}


// flutter/packages/flutter/lib/src/material/input_border.dart
UnderlineInputBorder _createUnderlineInputBorderWidget([arg]) {
    return new UnderlineInputBorder(
        borderSide: (arg is Map && arg.containsKey('borderSide')) ? arg['borderSide'] : BorderSide.none,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : const BorderRadius.only(topLeft : const Radius.circular(4.0), topRight : const Radius.circular(4.0),)
    );
}


// flutter/packages/flutter/lib/src/material/input_border.dart
OutlineInputBorder _createOutlineInputBorderWidget([arg]) {
    return new OutlineInputBorder(
        borderSide: (arg is Map && arg.containsKey('borderSide')) ? arg['borderSide'] : BorderSide.none,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : const BorderRadius.all(const Radius.circular(4.0)),
        gapPadding: (arg is Map && arg.containsKey('gapPadding')) ? arg['gapPadding'] : 4.0
    );
}


// flutter/packages/flutter/lib/src/material/input_decorator.dart
InputDecorator _createInputDecoratorWidget([arg]) {
    return new InputDecorator(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        baseStyle: (arg is Map && arg.containsKey('baseStyle')) ? arg['baseStyle'] : null,
        textAlign: (arg is Map && arg.containsKey('textAlign')) ? arg['textAlign'] : null,
        isFocused: (arg is Map && arg.containsKey('isFocused')) ? arg['isFocused'] : false,
        isEmpty: (arg is Map && arg.containsKey('isEmpty')) ? arg['isEmpty'] : false,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/input_decorator.dart
InputDecoration _createInputDecorationWidget([arg]) {
    return new InputDecoration(
        icon: (arg is Map && arg.containsKey('icon')) ? arg['icon'] : null,
        labelText: (arg is Map && arg.containsKey('labelText')) ? arg['labelText'] : null,
        labelStyle: (arg is Map && arg.containsKey('labelStyle')) ? arg['labelStyle'] : null,
        helperText: (arg is Map && arg.containsKey('helperText')) ? arg['helperText'] : null,
        helperStyle: (arg is Map && arg.containsKey('helperStyle')) ? arg['helperStyle'] : null,
        hintText: (arg is Map && arg.containsKey('hintText')) ? arg['hintText'] : null,
        hintStyle: (arg is Map && arg.containsKey('hintStyle')) ? arg['hintStyle'] : null,
        errorText: (arg is Map && arg.containsKey('errorText')) ? arg['errorText'] : null,
        errorStyle: (arg is Map && arg.containsKey('errorStyle')) ? arg['errorStyle'] : null,
        errorMaxLines: (arg is Map && arg.containsKey('errorMaxLines')) ? arg['errorMaxLines'] : null,
        isDense: (arg is Map && arg.containsKey('isDense')) ? arg['isDense'] : null,
        contentPadding: (arg is Map && arg.containsKey('contentPadding')) ? arg['contentPadding'] : null,
        prefixIcon: (arg is Map && arg.containsKey('prefixIcon')) ? arg['prefixIcon'] : null,
        prefixText: (arg is Map && arg.containsKey('prefixText')) ? arg['prefixText'] : null,
        prefixStyle: (arg is Map && arg.containsKey('prefixStyle')) ? arg['prefixStyle'] : null,
        suffixText: (arg is Map && arg.containsKey('suffixText')) ? arg['suffixText'] : null,
        suffixIcon: (arg is Map && arg.containsKey('suffixIcon')) ? arg['suffixIcon'] : null,
        suffixStyle: (arg is Map && arg.containsKey('suffixStyle')) ? arg['suffixStyle'] : null,
        counterText: (arg is Map && arg.containsKey('counterText')) ? arg['counterText'] : null,
        counterStyle: (arg is Map && arg.containsKey('counterStyle')) ? arg['counterStyle'] : null,
        filled: (arg is Map && arg.containsKey('filled')) ? arg['filled'] : null,
        fillColor: (arg is Map && arg.containsKey('fillColor')) ? arg['fillColor'] : null,
        border: (arg is Map && arg.containsKey('border')) ? arg['border'] : null,
        enabled: (arg is Map && arg.containsKey('enabled')) ? arg['enabled'] : true
    );
}


// flutter/packages/flutter/lib/src/material/input_decorator.dart
InputDecoration _createInputDecoration_collapsedWidget([arg]) {
    return InputDecoration.collapsed(
        /*@required*/ hintText: (arg is Map && arg.containsKey('hintText')) ? arg['hintText'] : null,
        hintStyle: (arg is Map && arg.containsKey('hintStyle')) ? arg['hintStyle'] : null,
        filled: (arg is Map && arg.containsKey('filled')) ? arg['filled'] : false,
        fillColor: (arg is Map && arg.containsKey('fillColor')) ? arg['fillColor'] : null,
        border: (arg is Map && arg.containsKey('border')) ? arg['border'] : InputBorder.none,
        enabled: (arg is Map && arg.containsKey('enabled')) ? arg['enabled'] : true
    );
}


// flutter/packages/flutter/lib/src/material/input_decorator.dart
InputDecorationTheme _createInputDecorationThemeWidget([arg]) {
    return new InputDecorationTheme(
        labelStyle: (arg is Map && arg.containsKey('labelStyle')) ? arg['labelStyle'] : null,
        helperStyle: (arg is Map && arg.containsKey('helperStyle')) ? arg['helperStyle'] : null,
        hintStyle: (arg is Map && arg.containsKey('hintStyle')) ? arg['hintStyle'] : null,
        errorStyle: (arg is Map && arg.containsKey('errorStyle')) ? arg['errorStyle'] : null,
        errorMaxLines: (arg is Map && arg.containsKey('errorMaxLines')) ? arg['errorMaxLines'] : null,
        isDense: (arg is Map && arg.containsKey('isDense')) ? arg['isDense'] : false,
        contentPadding: (arg is Map && arg.containsKey('contentPadding')) ? arg['contentPadding'] : null,
        isCollapsed: (arg is Map && arg.containsKey('isCollapsed')) ? arg['isCollapsed'] : false,
        prefixStyle: (arg is Map && arg.containsKey('prefixStyle')) ? arg['prefixStyle'] : null,
        suffixStyle: (arg is Map && arg.containsKey('suffixStyle')) ? arg['suffixStyle'] : null,
        counterStyle: (arg is Map && arg.containsKey('counterStyle')) ? arg['counterStyle'] : null,
        filled: (arg is Map && arg.containsKey('filled')) ? arg['filled'] : false,
        fillColor: (arg is Map && arg.containsKey('fillColor')) ? arg['fillColor'] : null,
        border: (arg is Map && arg.containsKey('border')) ? arg['border'] : const UnderlineInputBorder()
    );
}


// flutter/packages/flutter/lib/src/material/list_tile.dart
ListTileTheme _createListTileThemeWidget([arg]) {
    return new ListTileTheme(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        dense: (arg is Map && arg.containsKey('dense')) ? arg['dense'] : false,
        style: (arg is Map && arg.containsKey('style')) ? arg['style'] : ListTileStyle.list,
        selectedColor: (arg is Map && arg.containsKey('selectedColor')) ? arg['selectedColor'] : null,
        iconColor: (arg is Map && arg.containsKey('iconColor')) ? arg['iconColor'] : null,
        textColor: (arg is Map && arg.containsKey('textColor')) ? arg['textColor'] : null,
        contentPadding: (arg is Map && arg.containsKey('contentPadding')) ? arg['contentPadding'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/list_tile.dart
ListTile _createListTileWidget([arg]) {
    return new ListTile(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        leading: (arg is Map && arg.containsKey('leading')) ? arg['leading'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        subtitle: (arg is Map && arg.containsKey('subtitle')) ? arg['subtitle'] : null,
        trailing: (arg is Map && arg.containsKey('trailing')) ? arg['trailing'] : null,
        isThreeLine: (arg is Map && arg.containsKey('isThreeLine')) ? arg['isThreeLine'] : false,
        dense: (arg is Map && arg.containsKey('dense')) ? arg['dense'] : null,
        contentPadding: (arg is Map && arg.containsKey('contentPadding')) ? arg['contentPadding'] : null,
        enabled: (arg is Map && arg.containsKey('enabled')) ? arg['enabled'] : true,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null,
        onLongPress: (arg is Map && arg.containsKey('onLongPress')) ? arg['onLongPress'] : null,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : false
    );
}


// flutter/packages/flutter/lib/src/material/material.dart
Material _createMaterialWidget([arg]) {
    return new Material(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        type: (arg is Map && arg.containsKey('type')) ? arg['type'] : MaterialType.canvas,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 0.0,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        shadowColor: (arg is Map && arg.containsKey('shadowColor')) ? arg['shadowColor'] : const Color(0xFF000000),
        textStyle: (arg is Map && arg.containsKey('textStyle')) ? arg['textStyle'] : null,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        animationDuration: (arg is Map && arg.containsKey('animationDuration')) ? arg['animationDuration'] : kThemeChangeDuration,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/material.dart
ShapeBorderTween _createShapeBorderTweenWidget([arg]) {
    return new ShapeBorderTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/material/mergeable_material.dart
MaterialSlice _createMaterialSliceWidget([arg]) {
    return new MaterialSlice(
        /*@required*/ key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/mergeable_material.dart
MaterialGap _createMaterialGapWidget([arg]) {
    return new MaterialGap(
        /*@required*/ key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        size: (arg is Map && arg.containsKey('size')) ? arg['size'] : 16.0
    );
}


// flutter/packages/flutter/lib/src/material/mergeable_material.dart
MergeableMaterial _createMergeableMaterialWidget([arg]) {
    return new MergeableMaterial(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        mainAxis: (arg is Map && arg.containsKey('mainAxis')) ? arg['mainAxis'] : Axis.vertical,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 2,
        hasDividers: (arg is Map && arg.containsKey('hasDividers')) ? arg['hasDividers'] : false,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <MergeableMaterialItem>[]
    );
}


// flutter/packages/flutter/lib/src/material/outline_button.dart
OutlineButton _createOutlineButtonWidget([arg]) {
    return new OutlineButton(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : null,
        textColor: (arg is Map && arg.containsKey('textColor')) ? arg['textColor'] : null,
        disabledTextColor: (arg is Map && arg.containsKey('disabledTextColor')) ? arg['disabledTextColor'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        highlightElevation: (arg is Map && arg.containsKey('highlightElevation')) ? arg['highlightElevation'] : 2.0,
        borderSide: (arg is Map && arg.containsKey('borderSide')) ? arg['borderSide'] : null,
        disabledBorderColor: (arg is Map && arg.containsKey('disabledBorderColor')) ? arg['disabledBorderColor'] : null,
        highlightedBorderColor: (arg is Map && arg.containsKey('highlightedBorderColor')) ? arg['highlightedBorderColor'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/outline_button.dart
OutlineButton _createOutlineButton_iconWidget([arg]) {
    return OutlineButton.icon(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : null,
        textColor: (arg is Map && arg.containsKey('textColor')) ? arg['textColor'] : null,
        disabledTextColor: (arg is Map && arg.containsKey('disabledTextColor')) ? arg['disabledTextColor'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        highlightElevation: (arg is Map && arg.containsKey('highlightElevation')) ? arg['highlightElevation'] : 2.0,
        borderSide: (arg is Map && arg.containsKey('borderSide')) ? arg['borderSide'] : null,
        disabledBorderColor: (arg is Map && arg.containsKey('disabledBorderColor')) ? arg['disabledBorderColor'] : null,
        highlightedBorderColor: (arg is Map && arg.containsKey('highlightedBorderColor')) ? arg['highlightedBorderColor'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        /*@required*/ icon: (arg is Map && arg.containsKey('icon')) ? arg['icon'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null
    );
}


// flutter/packages/flutter/lib/src/material/page.dart
MaterialPageRoute _createMaterialPageRouteWidget([arg]) {
    return new MaterialPageRoute(
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null,
        settings: (arg is Map && arg.containsKey('settings')) ? arg['settings'] : null,
        maintainState: (arg is Map && arg.containsKey('maintainState')) ? arg['maintainState'] : true,
        fullscreenDialog: (arg is Map && arg.containsKey('fullscreenDialog')) ? arg['fullscreenDialog'] : false
    );
}


// flutter/packages/flutter/lib/src/material/paginated_data_table.dart
PaginatedDataTable _createPaginatedDataTableWidget([arg]) {
    return new PaginatedDataTable(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ header: (arg is Map && arg.containsKey('header')) ? arg['header'] : null,
        actions: (arg is Map && arg.containsKey('actions')) ? arg['actions'] : null,
        /*@required*/ columns: (arg is Map && arg.containsKey('columns')) ? arg['columns'] : null,
        sortColumnIndex: (arg is Map && arg.containsKey('sortColumnIndex')) ? arg['sortColumnIndex'] : null,
        sortAscending: (arg is Map && arg.containsKey('sortAscending')) ? arg['sortAscending'] : true,
        onSelectAll: (arg is Map && arg.containsKey('onSelectAll')) ? arg['onSelectAll'] : null,
        initialFirstRowIndex: (arg is Map && arg.containsKey('initialFirstRowIndex')) ? arg['initialFirstRowIndex'] : 0,
        onPageChanged: (arg is Map && arg.containsKey('onPageChanged')) ? arg['onPageChanged'] : null,
        rowsPerPage: (arg is Map && arg.containsKey('rowsPerPage')) ? arg['rowsPerPage'] : defaultRowsPerPage,
        availableRowsPerPage: (arg is Map && arg.containsKey('availableRowsPerPage')) ? arg['availableRowsPerPage'] : const <int>[defaultRowsPerPage, defaultRowsPerPage * 2, defaultRowsPerPage * 5, defaultRowsPerPage * 10],
        onRowsPerPageChanged: (arg is Map && arg.containsKey('onRowsPerPageChanged')) ? arg['onRowsPerPageChanged'] : null,
        /*@required*/ source: (arg is Map && arg.containsKey('source')) ? arg['source'] : null
    );
}


// flutter/packages/flutter/lib/src/material/popup_menu.dart
PopupMenuDivider _createPopupMenuDividerWidget([arg]) {
    return new PopupMenuDivider(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : _kMenuDividerHeight
    );
}


// flutter/packages/flutter/lib/src/material/popup_menu.dart
PopupMenuItem _createPopupMenuItemWidget([arg]) {
    return new PopupMenuItem(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        enabled: (arg is Map && arg.containsKey('enabled')) ? arg['enabled'] : true,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : _kMenuItemHeight,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/popup_menu.dart
CheckedPopupMenuItem _createCheckedPopupMenuItemWidget([arg]) {
    return new CheckedPopupMenuItem(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        checked: (arg is Map && arg.containsKey('checked')) ? arg['checked'] : false,
        enabled: (arg is Map && arg.containsKey('enabled')) ? arg['enabled'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/popup_menu.dart
PopupMenuButton _createPopupMenuButtonWidget([arg]) {
    return new PopupMenuButton(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ itemBuilder: (arg is Map && arg.containsKey('itemBuilder')) ? arg['itemBuilder'] : null,
        initialValue: (arg is Map && arg.containsKey('initialValue')) ? arg['initialValue'] : null,
        onSelected: (arg is Map && arg.containsKey('onSelected')) ? arg['onSelected'] : null,
        onCanceled: (arg is Map && arg.containsKey('onCanceled')) ? arg['onCanceled'] : null,
        tooltip: (arg is Map && arg.containsKey('tooltip')) ? arg['tooltip'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 8.0,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : const EdgeInsets.all(8.0),
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        icon: (arg is Map && arg.containsKey('icon')) ? arg['icon'] : null
    );
}


// flutter/packages/flutter/lib/src/material/progress_indicator.dart
LinearProgressIndicator _createLinearProgressIndicatorWidget([arg]) {
    return new LinearProgressIndicator(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        valueColor: (arg is Map && arg.containsKey('valueColor')) ? arg['valueColor'] : null
    );
}


// flutter/packages/flutter/lib/src/material/progress_indicator.dart
CircularProgressIndicator _createCircularProgressIndicatorWidget([arg]) {
    return new CircularProgressIndicator(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        valueColor: (arg is Map && arg.containsKey('valueColor')) ? arg['valueColor'] : null,
        strokeWidth: (arg is Map && arg.containsKey('strokeWidth')) ? arg['strokeWidth'] : 4.0
    );
}


// flutter/packages/flutter/lib/src/material/progress_indicator.dart
RefreshProgressIndicator _createRefreshProgressIndicatorWidget([arg]) {
    return new RefreshProgressIndicator(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        valueColor: (arg is Map && arg.containsKey('valueColor')) ? arg['valueColor'] : null,
        strokeWidth: (arg is Map && arg.containsKey('strokeWidth')) ? arg['strokeWidth'] : 2.0
    );
}


// flutter/packages/flutter/lib/src/material/radio_list_tile.dart
RadioListTile _createRadioListTileWidget([arg]) {
    return new RadioListTile(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        /*@required*/ groupValue: (arg is Map && arg.containsKey('groupValue')) ? arg['groupValue'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        activeColor: (arg is Map && arg.containsKey('activeColor')) ? arg['activeColor'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        subtitle: (arg is Map && arg.containsKey('subtitle')) ? arg['subtitle'] : null,
        isThreeLine: (arg is Map && arg.containsKey('isThreeLine')) ? arg['isThreeLine'] : false,
        dense: (arg is Map && arg.containsKey('dense')) ? arg['dense'] : null,
        secondary: (arg is Map && arg.containsKey('secondary')) ? arg['secondary'] : null,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : false,
        controlAffinity: (arg is Map && arg.containsKey('controlAffinity')) ? arg['controlAffinity'] : ListTileControlAffinity.platform
    );
}


// flutter/packages/flutter/lib/src/material/radio.dart
Radio _createRadioWidget([arg]) {
    return new Radio(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        /*@required*/ groupValue: (arg is Map && arg.containsKey('groupValue')) ? arg['groupValue'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        activeColor: (arg is Map && arg.containsKey('activeColor')) ? arg['activeColor'] : null
    );
}


// flutter/packages/flutter/lib/src/material/raised_button.dart
RaisedButton _createRaisedButtonWidget([arg]) {
    return new RaisedButton(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        onHighlightChanged: (arg is Map && arg.containsKey('onHighlightChanged')) ? arg['onHighlightChanged'] : null,
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : null,
        textColor: (arg is Map && arg.containsKey('textColor')) ? arg['textColor'] : null,
        disabledTextColor: (arg is Map && arg.containsKey('disabledTextColor')) ? arg['disabledTextColor'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        disabledColor: (arg is Map && arg.containsKey('disabledColor')) ? arg['disabledColor'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        colorBrightness: (arg is Map && arg.containsKey('colorBrightness')) ? arg['colorBrightness'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 2.0,
        highlightElevation: (arg is Map && arg.containsKey('highlightElevation')) ? arg['highlightElevation'] : 8.0,
        disabledElevation: (arg is Map && arg.containsKey('disabledElevation')) ? arg['disabledElevation'] : 0.0,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        animationDuration: (arg is Map && arg.containsKey('animationDuration')) ? arg['animationDuration'] : kThemeChangeDuration,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/raised_button.dart
RaisedButton _createRaisedButton_iconWidget([arg]) {
    return RaisedButton.icon(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null,
        onHighlightChanged: (arg is Map && arg.containsKey('onHighlightChanged')) ? arg['onHighlightChanged'] : null,
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : null,
        textColor: (arg is Map && arg.containsKey('textColor')) ? arg['textColor'] : null,
        disabledTextColor: (arg is Map && arg.containsKey('disabledTextColor')) ? arg['disabledTextColor'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        disabledColor: (arg is Map && arg.containsKey('disabledColor')) ? arg['disabledColor'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        colorBrightness: (arg is Map && arg.containsKey('colorBrightness')) ? arg['colorBrightness'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 2.0,
        highlightElevation: (arg is Map && arg.containsKey('highlightElevation')) ? arg['highlightElevation'] : 8.0,
        disabledElevation: (arg is Map && arg.containsKey('disabledElevation')) ? arg['disabledElevation'] : 0.0,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        animationDuration: (arg is Map && arg.containsKey('animationDuration')) ? arg['animationDuration'] : kThemeChangeDuration,
        /*@required*/ icon: (arg is Map && arg.containsKey('icon')) ? arg['icon'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null
    );
}


// flutter/packages/flutter/lib/src/material/refresh_indicator.dart
RefreshIndicator _createRefreshIndicatorWidget([arg]) {
    return new RefreshIndicator(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        displacement: (arg is Map && arg.containsKey('displacement')) ? arg['displacement'] : 40.0,
        /*@required*/ onRefresh: (arg is Map && arg.containsKey('onRefresh')) ? arg['onRefresh'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        notificationPredicate: (arg is Map && arg.containsKey('notificationPredicate')) ? arg['notificationPredicate'] : defaultScrollNotificationPredicate
    );
}


// flutter/packages/flutter/lib/src/material/scaffold.dart
ScaffoldPrelayoutGeometry _createScaffoldPrelayoutGeometryWidget([arg]) {
    return new ScaffoldPrelayoutGeometry(
        /*@required*/ bottomSheetSize: (arg is Map && arg.containsKey('bottomSheetSize')) ? arg['bottomSheetSize'] : null,
        /*@required*/ contentBottom: (arg is Map && arg.containsKey('contentBottom')) ? arg['contentBottom'] : null,
        /*@required*/ contentTop: (arg is Map && arg.containsKey('contentTop')) ? arg['contentTop'] : null,
        /*@required*/ floatingActionButtonSize: (arg is Map && arg.containsKey('floatingActionButtonSize')) ? arg['floatingActionButtonSize'] : null,
        /*@required*/ minInsets: (arg is Map && arg.containsKey('minInsets')) ? arg['minInsets'] : null,
        /*@required*/ scaffoldSize: (arg is Map && arg.containsKey('scaffoldSize')) ? arg['scaffoldSize'] : null,
        /*@required*/ snackBarSize: (arg is Map && arg.containsKey('snackBarSize')) ? arg['snackBarSize'] : null,
        /*@required*/ textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null
    );
}


// flutter/packages/flutter/lib/src/material/scaffold.dart
ScaffoldGeometry _createScaffoldGeometryWidget([arg]) {
    return new ScaffoldGeometry(
        bottomNavigationBarTop: (arg is Map && arg.containsKey('bottomNavigationBarTop')) ? arg['bottomNavigationBarTop'] : null,
        floatingActionButtonArea: (arg is Map && arg.containsKey('floatingActionButtonArea')) ? arg['floatingActionButtonArea'] : null,
        floatingActionButtonNotch: (arg is Map && arg.containsKey('floatingActionButtonNotch')) ? arg['floatingActionButtonNotch'] : null
    );
}


// flutter/packages/flutter/lib/src/material/scaffold.dart
Scaffold _createScaffoldWidget([arg]) {
    return new Scaffold(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        appBar: (arg is Map && arg.containsKey('appBar')) ? arg['appBar'] : null,
        body: (arg is Map && arg.containsKey('body')) ? arg['body'] : null,
        floatingActionButton: (arg is Map && arg.containsKey('floatingActionButton')) ? arg['floatingActionButton'] : null,
        floatingActionButtonLocation: (arg is Map && arg.containsKey('floatingActionButtonLocation')) ? arg['floatingActionButtonLocation'] : null,
        floatingActionButtonAnimator: (arg is Map && arg.containsKey('floatingActionButtonAnimator')) ? arg['floatingActionButtonAnimator'] : null,
        persistentFooterButtons: (arg is Map && arg.containsKey('persistentFooterButtons')) ? arg['persistentFooterButtons'] : null,
        drawer: (arg is Map && arg.containsKey('drawer')) ? arg['drawer'] : null,
        endDrawer: (arg is Map && arg.containsKey('endDrawer')) ? arg['endDrawer'] : null,
        bottomNavigationBar: (arg is Map && arg.containsKey('bottomNavigationBar')) ? arg['bottomNavigationBar'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        resizeToAvoidBottomPadding: (arg is Map && arg.containsKey('resizeToAvoidBottomPadding')) ? arg['resizeToAvoidBottomPadding'] : true,
        primary: (arg is Map && arg.containsKey('primary')) ? arg['primary'] : true
    );
}


// flutter/packages/flutter/lib/src/material/scrollbar.dart
Scrollbar _createScrollbarWidget([arg]) {
    return new Scrollbar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/slider_theme.dart
SliderTheme _createSliderThemeWidget([arg]) {
    return new SliderTheme(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ data: (arg is Map && arg.containsKey('data')) ? arg['data'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/slider_theme.dart
SliderThemeData _createSliderThemeDataWidget([arg]) {
    return new SliderThemeData(
        /*@required*/ activeTrackColor: (arg is Map && arg.containsKey('activeTrackColor')) ? arg['activeTrackColor'] : null,
        /*@required*/ inactiveTrackColor: (arg is Map && arg.containsKey('inactiveTrackColor')) ? arg['inactiveTrackColor'] : null,
        /*@required*/ disabledActiveTrackColor: (arg is Map && arg.containsKey('disabledActiveTrackColor')) ? arg['disabledActiveTrackColor'] : null,
        /*@required*/ disabledInactiveTrackColor: (arg is Map && arg.containsKey('disabledInactiveTrackColor')) ? arg['disabledInactiveTrackColor'] : null,
        /*@required*/ activeTickMarkColor: (arg is Map && arg.containsKey('activeTickMarkColor')) ? arg['activeTickMarkColor'] : null,
        /*@required*/ inactiveTickMarkColor: (arg is Map && arg.containsKey('inactiveTickMarkColor')) ? arg['inactiveTickMarkColor'] : null,
        /*@required*/ disabledActiveTickMarkColor: (arg is Map && arg.containsKey('disabledActiveTickMarkColor')) ? arg['disabledActiveTickMarkColor'] : null,
        /*@required*/ disabledInactiveTickMarkColor: (arg is Map && arg.containsKey('disabledInactiveTickMarkColor')) ? arg['disabledInactiveTickMarkColor'] : null,
        /*@required*/ thumbColor: (arg is Map && arg.containsKey('thumbColor')) ? arg['thumbColor'] : null,
        /*@required*/ disabledThumbColor: (arg is Map && arg.containsKey('disabledThumbColor')) ? arg['disabledThumbColor'] : null,
        /*@required*/ overlayColor: (arg is Map && arg.containsKey('overlayColor')) ? arg['overlayColor'] : null,
        /*@required*/ valueIndicatorColor: (arg is Map && arg.containsKey('valueIndicatorColor')) ? arg['valueIndicatorColor'] : null,
        /*@required*/ thumbShape: (arg is Map && arg.containsKey('thumbShape')) ? arg['thumbShape'] : null,
        /*@required*/ valueIndicatorShape: (arg is Map && arg.containsKey('valueIndicatorShape')) ? arg['valueIndicatorShape'] : null,
        /*@required*/ showValueIndicator: (arg is Map && arg.containsKey('showValueIndicator')) ? arg['showValueIndicator'] : null,
        /*@required*/ valueIndicatorTextStyle: (arg is Map && arg.containsKey('valueIndicatorTextStyle')) ? arg['valueIndicatorTextStyle'] : null
    );
}


// flutter/packages/flutter/lib/src/material/slider_theme.dart
SliderThemeData _createSliderThemeData_fromPrimaryColorsWidget([arg]) {
    return SliderThemeData.fromPrimaryColors(
        /*@required*/ primaryColor: (arg is Map && arg.containsKey('primaryColor')) ? arg['primaryColor'] : null,
        /*@required*/ primaryColorDark: (arg is Map && arg.containsKey('primaryColorDark')) ? arg['primaryColorDark'] : null,
        /*@required*/ primaryColorLight: (arg is Map && arg.containsKey('primaryColorLight')) ? arg['primaryColorLight'] : null,
        /*@required*/ valueIndicatorTextStyle: (arg is Map && arg.containsKey('valueIndicatorTextStyle')) ? arg['valueIndicatorTextStyle'] : null
    );
}


// flutter/packages/flutter/lib/src/material/slider.dart
Slider _createSliderWidget([arg]) {
    return new Slider(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        onChangeStart: (arg is Map && arg.containsKey('onChangeStart')) ? arg['onChangeStart'] : null,
        onChangeEnd: (arg is Map && arg.containsKey('onChangeEnd')) ? arg['onChangeEnd'] : null,
        min: (arg is Map && arg.containsKey('min')) ? arg['min'] : 0.0,
        max: (arg is Map && arg.containsKey('max')) ? arg['max'] : 1.0,
        divisions: (arg is Map && arg.containsKey('divisions')) ? arg['divisions'] : null,
        label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        activeColor: (arg is Map && arg.containsKey('activeColor')) ? arg['activeColor'] : null,
        inactiveColor: (arg is Map && arg.containsKey('inactiveColor')) ? arg['inactiveColor'] : null
    );
}


// flutter/packages/flutter/lib/src/material/snack_bar.dart
SnackBarAction _createSnackBarActionWidget([arg]) {
    return new SnackBarAction(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        /*@required*/ onPressed: (arg is Map && arg.containsKey('onPressed')) ? arg['onPressed'] : null
    );
}


// flutter/packages/flutter/lib/src/material/snack_bar.dart
SnackBar _createSnackBarWidget([arg]) {
    return new SnackBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ content: (arg is Map && arg.containsKey('content')) ? arg['content'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        action: (arg is Map && arg.containsKey('action')) ? arg['action'] : null,
        duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : _kSnackBarDisplayDuration,
        animation: (arg is Map && arg.containsKey('animation')) ? arg['animation'] : null
    );
}


// flutter/packages/flutter/lib/src/material/stepper.dart
Step _createStepWidget([arg]) {
    return new Step(
        /*@required*/ title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        subtitle: (arg is Map && arg.containsKey('subtitle')) ? arg['subtitle'] : null,
        /*@required*/ content: (arg is Map && arg.containsKey('content')) ? arg['content'] : null,
        state: (arg is Map && arg.containsKey('state')) ? arg['state'] : StepState.indexed,
        isActive: (arg is Map && arg.containsKey('isActive')) ? arg['isActive'] : false
    );
}


// flutter/packages/flutter/lib/src/material/stepper.dart
Stepper _createStepperWidget([arg]) {
    return new Stepper(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ steps: (arg is Map && arg.containsKey('steps')) ? arg['steps'] : null,
        type: (arg is Map && arg.containsKey('type')) ? arg['type'] : StepperType.vertical,
        currentStep: (arg is Map && arg.containsKey('currentStep')) ? arg['currentStep'] : 0,
        onStepTapped: (arg is Map && arg.containsKey('onStepTapped')) ? arg['onStepTapped'] : null,
        onStepContinue: (arg is Map && arg.containsKey('onStepContinue')) ? arg['onStepContinue'] : null,
        onStepCancel: (arg is Map && arg.containsKey('onStepCancel')) ? arg['onStepCancel'] : null
    );
}


// flutter/packages/flutter/lib/src/material/switch_list_tile.dart
SwitchListTile _createSwitchListTileWidget([arg]) {
    return new SwitchListTile(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        activeColor: (arg is Map && arg.containsKey('activeColor')) ? arg['activeColor'] : null,
        activeThumbImage: (arg is Map && arg.containsKey('activeThumbImage')) ? arg['activeThumbImage'] : null,
        inactiveThumbImage: (arg is Map && arg.containsKey('inactiveThumbImage')) ? arg['inactiveThumbImage'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        subtitle: (arg is Map && arg.containsKey('subtitle')) ? arg['subtitle'] : null,
        isThreeLine: (arg is Map && arg.containsKey('isThreeLine')) ? arg['isThreeLine'] : false,
        dense: (arg is Map && arg.containsKey('dense')) ? arg['dense'] : null,
        secondary: (arg is Map && arg.containsKey('secondary')) ? arg['secondary'] : null,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : false
    );
}


// flutter/packages/flutter/lib/src/material/switch.dart
Switch _createSwitchWidget([arg]) {
    return new Switch(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        /*@required*/ onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        activeColor: (arg is Map && arg.containsKey('activeColor')) ? arg['activeColor'] : null,
        activeTrackColor: (arg is Map && arg.containsKey('activeTrackColor')) ? arg['activeTrackColor'] : null,
        inactiveThumbColor: (arg is Map && arg.containsKey('inactiveThumbColor')) ? arg['inactiveThumbColor'] : null,
        inactiveTrackColor: (arg is Map && arg.containsKey('inactiveTrackColor')) ? arg['inactiveTrackColor'] : null,
        activeThumbImage: (arg is Map && arg.containsKey('activeThumbImage')) ? arg['activeThumbImage'] : null,
        inactiveThumbImage: (arg is Map && arg.containsKey('inactiveThumbImage')) ? arg['inactiveThumbImage'] : null
    );
}


// flutter/packages/flutter/lib/src/material/tab_controller.dart
TabController _createTabControllerWidget([arg]) {
    return new TabController(
        initialIndex: (arg is Map && arg.containsKey('initialIndex')) ? arg['initialIndex'] : 0,
        /*@required*/ length: (arg is Map && arg.containsKey('length')) ? arg['length'] : null,
        /*@required*/ vsync: (arg is Map && arg.containsKey('vsync')) ? arg['vsync'] : null
    );
}


// flutter/packages/flutter/lib/src/material/tab_controller.dart
DefaultTabController _createDefaultTabControllerWidget([arg]) {
    return new DefaultTabController(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ length: (arg is Map && arg.containsKey('length')) ? arg['length'] : null,
        initialIndex: (arg is Map && arg.containsKey('initialIndex')) ? arg['initialIndex'] : 0,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/tab_indicator.dart
UnderlineTabIndicator _createUnderlineTabIndicatorWidget([arg]) {
    return new UnderlineTabIndicator(
        borderSide: (arg is Map && arg.containsKey('borderSide')) ? arg['borderSide'] : const BorderSide(width : 2.0, color : Colors.white),
        insets: (arg is Map && arg.containsKey('insets')) ? arg['insets'] : EdgeInsets.zero
    );
}


// flutter/packages/flutter/lib/src/material/tabs.dart
Tab _createTabWidget([arg]) {
    return new Tab(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        text: (arg is Map && arg.containsKey('text')) ? arg['text'] : null,
        icon: (arg is Map && arg.containsKey('icon')) ? arg['icon'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/tabs.dart
TabBar _createTabBarWidget([arg]) {
    return new TabBar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ tabs: (arg is Map && arg.containsKey('tabs')) ? arg['tabs'] : null,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        isScrollable: (arg is Map && arg.containsKey('isScrollable')) ? arg['isScrollable'] : false,
        indicatorColor: (arg is Map && arg.containsKey('indicatorColor')) ? arg['indicatorColor'] : null,
        indicatorWeight: (arg is Map && arg.containsKey('indicatorWeight')) ? arg['indicatorWeight'] : 2.0,
        indicatorPadding: (arg is Map && arg.containsKey('indicatorPadding')) ? arg['indicatorPadding'] : EdgeInsets.zero,
        indicator: (arg is Map && arg.containsKey('indicator')) ? arg['indicator'] : null,
        indicatorSize: (arg is Map && arg.containsKey('indicatorSize')) ? arg['indicatorSize'] : null,
        labelColor: (arg is Map && arg.containsKey('labelColor')) ? arg['labelColor'] : null,
        labelStyle: (arg is Map && arg.containsKey('labelStyle')) ? arg['labelStyle'] : null,
        unselectedLabelColor: (arg is Map && arg.containsKey('unselectedLabelColor')) ? arg['unselectedLabelColor'] : null,
        unselectedLabelStyle: (arg is Map && arg.containsKey('unselectedLabelStyle')) ? arg['unselectedLabelStyle'] : null
    );
}


// flutter/packages/flutter/lib/src/material/tabs.dart
TabBarView _createTabBarViewWidget([arg]) {
    return new TabBarView(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null
    );
}


// flutter/packages/flutter/lib/src/material/tabs.dart
TabPageSelectorIndicator _createTabPageSelectorIndicatorWidget([arg]) {
    return new TabPageSelectorIndicator(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        /*@required*/ borderColor: (arg is Map && arg.containsKey('borderColor')) ? arg['borderColor'] : null,
        /*@required*/ size: (arg is Map && arg.containsKey('size')) ? arg['size'] : null
    );
}


// flutter/packages/flutter/lib/src/material/tabs.dart
TabPageSelector _createTabPageSelectorWidget([arg]) {
    return new TabPageSelector(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        indicatorSize: (arg is Map && arg.containsKey('indicatorSize')) ? arg['indicatorSize'] : 12.0,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        selectedColor: (arg is Map && arg.containsKey('selectedColor')) ? arg['selectedColor'] : null
    );
}


// flutter/packages/flutter/lib/src/material/text_field.dart
TextField _createTextFieldWidget([arg]) {
    return new TextField(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        focusNode: (arg is Map && arg.containsKey('focusNode')) ? arg['focusNode'] : null,
        decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : const InputDecoration(),
        keyboardType: (arg is Map && arg.containsKey('keyboardType')) ? arg['keyboardType'] : TextInputType.text,
        style: (arg is Map && arg.containsKey('style')) ? arg['style'] : null,
        textAlign: (arg is Map && arg.containsKey('textAlign')) ? arg['textAlign'] : TextAlign.start,
        autofocus: (arg is Map && arg.containsKey('autofocus')) ? arg['autofocus'] : false,
        obscureText: (arg is Map && arg.containsKey('obscureText')) ? arg['obscureText'] : false,
        autocorrect: (arg is Map && arg.containsKey('autocorrect')) ? arg['autocorrect'] : true,
        maxLines: (arg is Map && arg.containsKey('maxLines')) ? arg['maxLines'] : 1,
        maxLength: (arg is Map && arg.containsKey('maxLength')) ? arg['maxLength'] : null,
        maxLengthEnforced: (arg is Map && arg.containsKey('maxLengthEnforced')) ? arg['maxLengthEnforced'] : true,
        onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        onSubmitted: (arg is Map && arg.containsKey('onSubmitted')) ? arg['onSubmitted'] : null,
        inputFormatters: (arg is Map && arg.containsKey('inputFormatters')) ? arg['inputFormatters'] : null,
        enabled: (arg is Map && arg.containsKey('enabled')) ? arg['enabled'] : null
    );
}


// flutter/packages/flutter/lib/src/material/text_form_field.dart
TextFormField _createTextFormFieldWidget([arg]) {
    return new TextFormField(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        initialValue: (arg is Map && arg.containsKey('initialValue')) ? arg['initialValue'] : null,
        focusNode: (arg is Map && arg.containsKey('focusNode')) ? arg['focusNode'] : null,
        decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : const InputDecoration(),
        keyboardType: (arg is Map && arg.containsKey('keyboardType')) ? arg['keyboardType'] : TextInputType.text,
        style: (arg is Map && arg.containsKey('style')) ? arg['style'] : null,
        textAlign: (arg is Map && arg.containsKey('textAlign')) ? arg['textAlign'] : TextAlign.start,
        autofocus: (arg is Map && arg.containsKey('autofocus')) ? arg['autofocus'] : false,
        obscureText: (arg is Map && arg.containsKey('obscureText')) ? arg['obscureText'] : false,
        autocorrect: (arg is Map && arg.containsKey('autocorrect')) ? arg['autocorrect'] : true,
        autovalidate: (arg is Map && arg.containsKey('autovalidate')) ? arg['autovalidate'] : false,
        maxLengthEnforced: (arg is Map && arg.containsKey('maxLengthEnforced')) ? arg['maxLengthEnforced'] : true,
        maxLines: (arg is Map && arg.containsKey('maxLines')) ? arg['maxLines'] : 1,
        maxLength: (arg is Map && arg.containsKey('maxLength')) ? arg['maxLength'] : null,
        onFieldSubmitted: (arg is Map && arg.containsKey('onFieldSubmitted')) ? arg['onFieldSubmitted'] : null,
        onSaved: (arg is Map && arg.containsKey('onSaved')) ? arg['onSaved'] : null,
        validator: (arg is Map && arg.containsKey('validator')) ? arg['validator'] : null,
        inputFormatters: (arg is Map && arg.containsKey('inputFormatters')) ? arg['inputFormatters'] : null,
        enabled: (arg is Map && arg.containsKey('enabled')) ? arg['enabled'] : null
    );
}


// flutter/packages/flutter/lib/src/material/theme_data.dart
ThemeData _createThemeDataWidget([arg]) {
    return new ThemeData(
        brightness: (arg is Map && arg.containsKey('brightness')) ? arg['brightness'] : null,
        primarySwatch: (arg is Map && arg.containsKey('primarySwatch')) ? arg['primarySwatch'] : null,
        primaryColor: (arg is Map && arg.containsKey('primaryColor')) ? arg['primaryColor'] : null,
        primaryColorBrightness: (arg is Map && arg.containsKey('primaryColorBrightness')) ? arg['primaryColorBrightness'] : null,
        primaryColorLight: (arg is Map && arg.containsKey('primaryColorLight')) ? arg['primaryColorLight'] : null,
        primaryColorDark: (arg is Map && arg.containsKey('primaryColorDark')) ? arg['primaryColorDark'] : null,
        accentColor: (arg is Map && arg.containsKey('accentColor')) ? arg['accentColor'] : null,
        accentColorBrightness: (arg is Map && arg.containsKey('accentColorBrightness')) ? arg['accentColorBrightness'] : null,
        canvasColor: (arg is Map && arg.containsKey('canvasColor')) ? arg['canvasColor'] : null,
        scaffoldBackgroundColor: (arg is Map && arg.containsKey('scaffoldBackgroundColor')) ? arg['scaffoldBackgroundColor'] : null,
        bottomAppBarColor: (arg is Map && arg.containsKey('bottomAppBarColor')) ? arg['bottomAppBarColor'] : null,
        cardColor: (arg is Map && arg.containsKey('cardColor')) ? arg['cardColor'] : null,
        dividerColor: (arg is Map && arg.containsKey('dividerColor')) ? arg['dividerColor'] : null,
        highlightColor: (arg is Map && arg.containsKey('highlightColor')) ? arg['highlightColor'] : null,
        splashColor: (arg is Map && arg.containsKey('splashColor')) ? arg['splashColor'] : null,
        splashFactory: (arg is Map && arg.containsKey('splashFactory')) ? arg['splashFactory'] : null,
        selectedRowColor: (arg is Map && arg.containsKey('selectedRowColor')) ? arg['selectedRowColor'] : null,
        unselectedWidgetColor: (arg is Map && arg.containsKey('unselectedWidgetColor')) ? arg['unselectedWidgetColor'] : null,
        disabledColor: (arg is Map && arg.containsKey('disabledColor')) ? arg['disabledColor'] : null,
        buttonColor: (arg is Map && arg.containsKey('buttonColor')) ? arg['buttonColor'] : null,
        buttonTheme: (arg is Map && arg.containsKey('buttonTheme')) ? arg['buttonTheme'] : null,
        secondaryHeaderColor: (arg is Map && arg.containsKey('secondaryHeaderColor')) ? arg['secondaryHeaderColor'] : null,
        textSelectionColor: (arg is Map && arg.containsKey('textSelectionColor')) ? arg['textSelectionColor'] : null,
        textSelectionHandleColor: (arg is Map && arg.containsKey('textSelectionHandleColor')) ? arg['textSelectionHandleColor'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null,
        dialogBackgroundColor: (arg is Map && arg.containsKey('dialogBackgroundColor')) ? arg['dialogBackgroundColor'] : null,
        indicatorColor: (arg is Map && arg.containsKey('indicatorColor')) ? arg['indicatorColor'] : null,
        hintColor: (arg is Map && arg.containsKey('hintColor')) ? arg['hintColor'] : null,
        errorColor: (arg is Map && arg.containsKey('errorColor')) ? arg['errorColor'] : null,
        toggleableActiveColor: (arg is Map && arg.containsKey('toggleableActiveColor')) ? arg['toggleableActiveColor'] : null,
        fontFamily: (arg is Map && arg.containsKey('fontFamily')) ? arg['fontFamily'] : null,
        textTheme: (arg is Map && arg.containsKey('textTheme')) ? arg['textTheme'] : null,
        primaryTextTheme: (arg is Map && arg.containsKey('primaryTextTheme')) ? arg['primaryTextTheme'] : null,
        accentTextTheme: (arg is Map && arg.containsKey('accentTextTheme')) ? arg['accentTextTheme'] : null,
        inputDecorationTheme: (arg is Map && arg.containsKey('inputDecorationTheme')) ? arg['inputDecorationTheme'] : null,
        iconTheme: (arg is Map && arg.containsKey('iconTheme')) ? arg['iconTheme'] : null,
        primaryIconTheme: (arg is Map && arg.containsKey('primaryIconTheme')) ? arg['primaryIconTheme'] : null,
        accentIconTheme: (arg is Map && arg.containsKey('accentIconTheme')) ? arg['accentIconTheme'] : null,
        sliderTheme: (arg is Map && arg.containsKey('sliderTheme')) ? arg['sliderTheme'] : null,
        chipTheme: (arg is Map && arg.containsKey('chipTheme')) ? arg['chipTheme'] : null,
        platform: (arg is Map && arg.containsKey('platform')) ? arg['platform'] : null
    );
}


// flutter/packages/flutter/lib/src/material/theme.dart
Theme _createThemeWidget([arg]) {
    return new Theme(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ data: (arg is Map && arg.containsKey('data')) ? arg['data'] : null,
        isMaterialAppTheme: (arg is Map && arg.containsKey('isMaterialAppTheme')) ? arg['isMaterialAppTheme'] : false,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/theme.dart
ThemeDataTween _createThemeDataTweenWidget([arg]) {
    return new ThemeDataTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/material/theme.dart
AnimatedTheme _createAnimatedThemeWidget([arg]) {
    return new AnimatedTheme(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ data: (arg is Map && arg.containsKey('data')) ? arg['data'] : null,
        isMaterialAppTheme: (arg is Map && arg.containsKey('isMaterialAppTheme')) ? arg['isMaterialAppTheme'] : false,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : kThemeAnimationDuration,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/time.dart
TimeOfDay _createTimeOfDayWidget([arg]) {
    return new TimeOfDay(
        /*@required*/ hour: (arg is Map && arg.containsKey('hour')) ? arg['hour'] : null,
        /*@required*/ minute: (arg is Map && arg.containsKey('minute')) ? arg['minute'] : null
    );
}


// flutter/packages/flutter/lib/src/material/tooltip.dart
Tooltip _createTooltipWidget([arg]) {
    return new Tooltip(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ message: (arg is Map && arg.containsKey('message')) ? arg['message'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : 32.0,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : const EdgeInsets.symmetric(horizontal : 16.0),
        verticalOffset: (arg is Map && arg.containsKey('verticalOffset')) ? arg['verticalOffset'] : 24.0,
        preferBelow: (arg is Map && arg.containsKey('preferBelow')) ? arg['preferBelow'] : true,
        excludeFromSemantics: (arg is Map && arg.containsKey('excludeFromSemantics')) ? arg['excludeFromSemantics'] : false,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/material/typography.dart
TextTheme _createTextThemeWidget([arg]) {
    return new TextTheme(
        display4: (arg is Map && arg.containsKey('display4')) ? arg['display4'] : null,
        display3: (arg is Map && arg.containsKey('display3')) ? arg['display3'] : null,
        display2: (arg is Map && arg.containsKey('display2')) ? arg['display2'] : null,
        display1: (arg is Map && arg.containsKey('display1')) ? arg['display1'] : null,
        headline: (arg is Map && arg.containsKey('headline')) ? arg['headline'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        subhead: (arg is Map && arg.containsKey('subhead')) ? arg['subhead'] : null,
        body2: (arg is Map && arg.containsKey('body2')) ? arg['body2'] : null,
        body1: (arg is Map && arg.containsKey('body1')) ? arg['body1'] : null,
        caption: (arg is Map && arg.containsKey('caption')) ? arg['caption'] : null,
        button: (arg is Map && arg.containsKey('button')) ? arg['button'] : null
    );
}


// flutter/packages/flutter/lib/src/material/typography.dart
Typography _createTypographyWidget([arg]) {
    return new Typography(
        /*@required*/ platform: (arg is Map && arg.containsKey('platform')) ? arg['platform'] : null
    );
}


// flutter/packages/flutter/lib/src/material/user_accounts_drawer_header.dart
UserAccountsDrawerHeader _createUserAccountsDrawerHeaderWidget([arg]) {
    return new UserAccountsDrawerHeader(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        margin: (arg is Map && arg.containsKey('margin')) ? arg['margin'] : const EdgeInsets.only(bottom : 8.0),
        currentAccountPicture: (arg is Map && arg.containsKey('currentAccountPicture')) ? arg['currentAccountPicture'] : null,
        otherAccountsPictures: (arg is Map && arg.containsKey('otherAccountsPictures')) ? arg['otherAccountsPictures'] : null,
        /*@required*/ accountName: (arg is Map && arg.containsKey('accountName')) ? arg['accountName'] : null,
        /*@required*/ accountEmail: (arg is Map && arg.containsKey('accountEmail')) ? arg['accountEmail'] : null,
        onDetailsPressed: (arg is Map && arg.containsKey('onDetailsPressed')) ? arg['onDetailsPressed'] : null
    );
}


// flutter/packages/flutter/lib/src/painting/beveled_rectangle_border.dart
BeveledRectangleBorder _createBeveledRectangleBorderWidget([arg]) {
    return new BeveledRectangleBorder(
        side: (arg is Map && arg.containsKey('side')) ? arg['side'] : BorderSide.none,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : BorderRadius.zero
    );
}


// flutter/packages/flutter/lib/src/painting/borders.dart
BorderSide _createBorderSideWidget([arg]) {
    return new BorderSide(
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : const Color(0xFF000000),
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : 1.0,
        style: (arg is Map && arg.containsKey('style')) ? arg['style'] : BorderStyle.solid
    );
}


// flutter/packages/flutter/lib/src/painting/box_border.dart
Border _createBorderWidget([arg]) {
    return new Border(
        top: (arg is Map && arg.containsKey('top')) ? arg['top'] : BorderSide.none,
        right: (arg is Map && arg.containsKey('right')) ? arg['right'] : BorderSide.none,
        bottom: (arg is Map && arg.containsKey('bottom')) ? arg['bottom'] : BorderSide.none,
        left: (arg is Map && arg.containsKey('left')) ? arg['left'] : BorderSide.none
    );
}


// flutter/packages/flutter/lib/src/painting/box_border.dart
BorderDirectional _createBorderDirectionalWidget([arg]) {
    return new BorderDirectional(
        top: (arg is Map && arg.containsKey('top')) ? arg['top'] : BorderSide.none,
        start: (arg is Map && arg.containsKey('start')) ? arg['start'] : BorderSide.none,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : BorderSide.none,
        bottom: (arg is Map && arg.containsKey('bottom')) ? arg['bottom'] : BorderSide.none
    );
}


// flutter/packages/flutter/lib/src/painting/box_decoration.dart
BoxDecoration _createBoxDecorationWidget([arg]) {
    return new BoxDecoration(
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        image: (arg is Map && arg.containsKey('image')) ? arg['image'] : null,
        border: (arg is Map && arg.containsKey('border')) ? arg['border'] : null,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : null,
        boxShadow: (arg is Map && arg.containsKey('boxShadow')) ? arg['boxShadow'] : null,
        gradient: (arg is Map && arg.containsKey('gradient')) ? arg['gradient'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : BoxShape.rectangle
    );
}


// flutter/packages/flutter/lib/src/painting/box_shadow.dart
BoxShadow _createBoxShadowWidget([arg]) {
    return new BoxShadow(
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : const Color(0xFF000000),
        offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : Offset.zero,
        blurRadius: (arg is Map && arg.containsKey('blurRadius')) ? arg['blurRadius'] : 0.0,
        spreadRadius: (arg is Map && arg.containsKey('spreadRadius')) ? arg['spreadRadius'] : 0.0
    );
}


// flutter/packages/flutter/lib/src/painting/circle_border.dart
CircleBorder _createCircleBorderWidget([arg]) {
    return new CircleBorder(
        side: (arg is Map && arg.containsKey('side')) ? arg['side'] : BorderSide.none
    );
}


// flutter/packages/flutter/lib/src/painting/decoration_image.dart
DecorationImage _createDecorationImageWidget([arg]) {
    return new DecorationImage(
        /*@required*/ image: (arg is Map && arg.containsKey('image')) ? arg['image'] : null,
        colorFilter: (arg is Map && arg.containsKey('colorFilter')) ? arg['colorFilter'] : null,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        centerSlice: (arg is Map && arg.containsKey('centerSlice')) ? arg['centerSlice'] : null,
        repeat: (arg is Map && arg.containsKey('repeat')) ? arg['repeat'] : ImageRepeat.noRepeat,
        matchTextDirection: (arg is Map && arg.containsKey('matchTextDirection')) ? arg['matchTextDirection'] : false
    );
}


// flutter/packages/flutter/lib/src/painting/flutter_logo.dart
FlutterLogoDecoration _createFlutterLogoDecorationWidget([arg]) {
    return new FlutterLogoDecoration(
        lightColor: (arg is Map && arg.containsKey('lightColor')) ? arg['lightColor'] : const Color(0xFF42A5F5),
        darkColor: (arg is Map && arg.containsKey('darkColor')) ? arg['darkColor'] : const Color(0xFF0D47A1),
        textColor: (arg is Map && arg.containsKey('textColor')) ? arg['textColor'] : const Color(0xFF616161),
        style: (arg is Map && arg.containsKey('style')) ? arg['style'] : FlutterLogoStyle.markOnly,
        margin: (arg is Map && arg.containsKey('margin')) ? arg['margin'] : EdgeInsets.zero
    );
}


// flutter/packages/flutter/lib/src/painting/gradient.dart
LinearGradient _createLinearGradientWidget([arg]) {
    return new LinearGradient(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : Alignment.centerLeft,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : Alignment.centerRight,
        /*@required*/ colors: (arg is Map && arg.containsKey('colors')) ? arg['colors'] : null,
        stops: (arg is Map && arg.containsKey('stops')) ? arg['stops'] : null,
        tileMode: (arg is Map && arg.containsKey('tileMode')) ? arg['tileMode'] : TileMode.clamp
    );
}


// flutter/packages/flutter/lib/src/painting/gradient.dart
RadialGradient _createRadialGradientWidget([arg]) {
    return new RadialGradient(
        center: (arg is Map && arg.containsKey('center')) ? arg['center'] : Alignment.center,
        radius: (arg is Map && arg.containsKey('radius')) ? arg['radius'] : 0.5,
        /*@required*/ colors: (arg is Map && arg.containsKey('colors')) ? arg['colors'] : null,
        stops: (arg is Map && arg.containsKey('stops')) ? arg['stops'] : null,
        tileMode: (arg is Map && arg.containsKey('tileMode')) ? arg['tileMode'] : TileMode.clamp
    );
}


// flutter/packages/flutter/lib/src/painting/image_provider.dart
ImageConfiguration _createImageConfigurationWidget([arg]) {
    return new ImageConfiguration(
        bundle: (arg is Map && arg.containsKey('bundle')) ? arg['bundle'] : null,
        devicePixelRatio: (arg is Map && arg.containsKey('devicePixelRatio')) ? arg['devicePixelRatio'] : null,
        locale: (arg is Map && arg.containsKey('locale')) ? arg['locale'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        size: (arg is Map && arg.containsKey('size')) ? arg['size'] : null,
        platform: (arg is Map && arg.containsKey('platform')) ? arg['platform'] : null
    );
}


// flutter/packages/flutter/lib/src/painting/image_provider.dart
AssetBundleImageKey _createAssetBundleImageKeyWidget([arg]) {
    return new AssetBundleImageKey(
        /*@required*/ bundle: (arg is Map && arg.containsKey('bundle')) ? arg['bundle'] : null,
        /*@required*/ name: (arg is Map && arg.containsKey('name')) ? arg['name'] : null,
        /*@required*/ scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : null
    );
}


// flutter/packages/flutter/lib/src/painting/image_provider.dart
NetworkImage _createNetworkImageWidget(data, [arg]) {
    return new NetworkImage(
        data,
        scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : 1.0,
        headers: (arg is Map && arg.containsKey('headers')) ? arg['headers'] : null
    );
}


// flutter/packages/flutter/lib/src/painting/image_provider.dart
FileImage _createFileImageWidget(data, [arg]) {
    return new FileImage(
        data,
        scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/painting/image_provider.dart
MemoryImage _createMemoryImageWidget(data, [arg]) {
    return new MemoryImage(
        data,
        scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/painting/image_provider.dart
ExactAssetImage _createExactAssetImageWidget(data, [arg]) {
    return new ExactAssetImage(
        data,
        scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : 1.0,
        bundle: (arg is Map && arg.containsKey('bundle')) ? arg['bundle'] : null,
        package: (arg is Map && arg.containsKey('package')) ? arg['package'] : null
    );
}


// flutter/packages/flutter/lib/src/painting/image_resolution.dart
AssetImage _createAssetImageWidget(data, [arg]) {
    return new AssetImage(
        data,
        bundle: (arg is Map && arg.containsKey('bundle')) ? arg['bundle'] : null,
        package: (arg is Map && arg.containsKey('package')) ? arg['package'] : null
    );
}


// flutter/packages/flutter/lib/src/painting/image_stream.dart
ImageInfo _createImageInfoWidget([arg]) {
    return new ImageInfo(
        /*@required*/ image: (arg is Map && arg.containsKey('image')) ? arg['image'] : null,
        scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/painting/image_stream.dart
MultiFrameImageStreamCompleter _createMultiFrameImageStreamCompleterWidget([arg]) {
    return new MultiFrameImageStreamCompleter(
        /*@required*/ codec: (arg is Map && arg.containsKey('codec')) ? arg['codec'] : null,
        /*@required*/ scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : null,
        informationCollector: (arg is Map && arg.containsKey('informationCollector')) ? arg['informationCollector'] : null
    );
}


// flutter/packages/flutter/lib/src/painting/rounded_rectangle_border.dart
RoundedRectangleBorder _createRoundedRectangleBorderWidget([arg]) {
    return new RoundedRectangleBorder(
        side: (arg is Map && arg.containsKey('side')) ? arg['side'] : BorderSide.none,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : BorderRadius.zero
    );
}


// flutter/packages/flutter/lib/src/painting/shape_decoration.dart
ShapeDecoration _createShapeDecorationWidget([arg]) {
    return new ShapeDecoration(
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        image: (arg is Map && arg.containsKey('image')) ? arg['image'] : null,
        gradient: (arg is Map && arg.containsKey('gradient')) ? arg['gradient'] : null,
        shadows: (arg is Map && arg.containsKey('shadows')) ? arg['shadows'] : null,
        /*@required*/ shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null
    );
}


// flutter/packages/flutter/lib/src/painting/text_painter.dart
TextPainter _createTextPainterWidget([arg]) {
    return new TextPainter(
        text: (arg is Map && arg.containsKey('text')) ? arg['text'] : null,
        textAlign: (arg is Map && arg.containsKey('textAlign')) ? arg['textAlign'] : TextAlign.start,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        textScaleFactor: (arg is Map && arg.containsKey('textScaleFactor')) ? arg['textScaleFactor'] : 1.0,
        maxLines: (arg is Map && arg.containsKey('maxLines')) ? arg['maxLines'] : null,
        ellipsis: (arg is Map && arg.containsKey('ellipsis')) ? arg['ellipsis'] : null,
        locale: (arg is Map && arg.containsKey('locale')) ? arg['locale'] : null
    );
}


// flutter/packages/flutter/lib/src/painting/text_span.dart
TextSpan _createTextSpanWidget([arg]) {
    return new TextSpan(
        style: (arg is Map && arg.containsKey('style')) ? arg['style'] : null,
        text: (arg is Map && arg.containsKey('text')) ? arg['text'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        recognizer: (arg is Map && arg.containsKey('recognizer')) ? arg['recognizer'] : null
    );
}


// flutter/packages/flutter/lib/src/painting/text_style.dart
TextStyle _createTextStyleWidget([arg]) {
    return new TextStyle(
        inherit: (arg is Map && arg.containsKey('inherit')) ? arg['inherit'] : true,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        fontSize: (arg is Map && arg.containsKey('fontSize')) ? arg['fontSize'] : null,
        fontWeight: (arg is Map && arg.containsKey('fontWeight')) ? arg['fontWeight'] : null,
        fontStyle: (arg is Map && arg.containsKey('fontStyle')) ? arg['fontStyle'] : null,
        letterSpacing: (arg is Map && arg.containsKey('letterSpacing')) ? arg['letterSpacing'] : null,
        wordSpacing: (arg is Map && arg.containsKey('wordSpacing')) ? arg['wordSpacing'] : null,
        textBaseline: (arg is Map && arg.containsKey('textBaseline')) ? arg['textBaseline'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        locale: (arg is Map && arg.containsKey('locale')) ? arg['locale'] : null,
        background: (arg is Map && arg.containsKey('background')) ? arg['background'] : null,
        decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        decorationColor: (arg is Map && arg.containsKey('decorationColor')) ? arg['decorationColor'] : null,
        decorationStyle: (arg is Map && arg.containsKey('decorationStyle')) ? arg['decorationStyle'] : null,
        debugLabel: (arg is Map && arg.containsKey('debugLabel')) ? arg['debugLabel'] : null,
        fontFamily: (arg is Map && arg.containsKey('fontFamily')) ? arg['fontFamily'] : null,
        package: (arg is Map && arg.containsKey('package')) ? arg['package'] : null
    );
}


// flutter/packages/flutter/lib/src/physics/clamped_simulation.dart
ClampedSimulation _createClampedSimulationWidget(data, [arg]) {
    return new ClampedSimulation(
        data,
        xMin: (arg is Map && arg.containsKey('xMin')) ? arg['xMin'] : double.negativeInfinity,
        xMax: (arg is Map && arg.containsKey('xMax')) ? arg['xMax'] : double.infinity,
        dxMin: (arg is Map && arg.containsKey('dxMin')) ? arg['dxMin'] : double.negativeInfinity,
        dxMax: (arg is Map && arg.containsKey('dxMax')) ? arg['dxMax'] : double.infinity
    );
}


// flutter/packages/flutter/lib/src/physics/spring_simulation.dart
SpringDescription _createSpringDescriptionWidget([arg]) {
    return new SpringDescription(
        mass: (arg is Map && arg.containsKey('mass')) ? arg['mass'] : null,
        stiffness: (arg is Map && arg.containsKey('stiffness')) ? arg['stiffness'] : null,
        damping: (arg is Map && arg.containsKey('damping')) ? arg['damping'] : null
    );
}


// flutter/packages/flutter/lib/src/physics/spring_simulation.dart
SpringDescription _createSpringDescription_withDampingRatioWidget([arg]) {
    return SpringDescription.withDampingRatio(
        mass: (arg is Map && arg.containsKey('mass')) ? arg['mass'] : null,
        stiffness: (arg is Map && arg.containsKey('stiffness')) ? arg['stiffness'] : null,
        ratio: (arg is Map && arg.containsKey('ratio')) ? arg['ratio'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/physics/tolerance.dart
Tolerance _createToleranceWidget([arg]) {
    return new Tolerance(
        distance: (arg is Map && arg.containsKey('distance')) ? arg['distance'] : _epsilonDefault,
        time: (arg is Map && arg.containsKey('time')) ? arg['time'] : _epsilonDefault,
        velocity: (arg is Map && arg.containsKey('velocity')) ? arg['velocity'] : _epsilonDefault
    );
}


// flutter/packages/flutter/lib/src/rendering/animated_size.dart
RenderAnimatedSize _createRenderAnimatedSizeWidget([arg]) {
    return new RenderAnimatedSize(
        /*@required*/ vsync: (arg is Map && arg.containsKey('vsync')) ? arg['vsync'] : null,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/binding.dart
RenderingFlutterBinding _createRenderingFlutterBindingWidget([arg]) {
    return new RenderingFlutterBinding(
        root: (arg is Map && arg.containsKey('root')) ? arg['root'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/box.dart
BoxConstraints _createBoxConstraintsWidget([arg]) {
    return new BoxConstraints(
        minWidth: (arg is Map && arg.containsKey('minWidth')) ? arg['minWidth'] : 0.0,
        maxWidth: (arg is Map && arg.containsKey('maxWidth')) ? arg['maxWidth'] : double.infinity,
        minHeight: (arg is Map && arg.containsKey('minHeight')) ? arg['minHeight'] : 0.0,
        maxHeight: (arg is Map && arg.containsKey('maxHeight')) ? arg['maxHeight'] : double.infinity
    );
}


// flutter/packages/flutter/lib/src/rendering/custom_layout.dart
RenderCustomMultiChildLayoutBox _createRenderCustomMultiChildLayoutBoxWidget([arg]) {
    return new RenderCustomMultiChildLayoutBox(
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/custom_paint.dart
CustomPainterSemantics _createCustomPainterSemanticsWidget([arg]) {
    return new CustomPainterSemantics(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ rect: (arg is Map && arg.containsKey('rect')) ? arg['rect'] : null,
        /*@required*/ properties: (arg is Map && arg.containsKey('properties')) ? arg['properties'] : null,
        transform: (arg is Map && arg.containsKey('transform')) ? arg['transform'] : null,
        tags: (arg is Map && arg.containsKey('tags')) ? arg['tags'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/custom_paint.dart
RenderCustomPaint _createRenderCustomPaintWidget([arg]) {
    return new RenderCustomPaint(
        painter: (arg is Map && arg.containsKey('painter')) ? arg['painter'] : null,
        foregroundPainter: (arg is Map && arg.containsKey('foregroundPainter')) ? arg['foregroundPainter'] : null,
        preferredSize: (arg is Map && arg.containsKey('preferredSize')) ? arg['preferredSize'] : Size.zero,
        isComplex: (arg is Map && arg.containsKey('isComplex')) ? arg['isComplex'] : false,
        willChange: (arg is Map && arg.containsKey('willChange')) ? arg['willChange'] : false,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/editable.dart
RenderEditable _createRenderEditableWidget([arg]) {
    return new RenderEditable(
        text: (arg is Map && arg.containsKey('text')) ? arg['text'] : null,
        /*@required*/ textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        textAlign: (arg is Map && arg.containsKey('textAlign')) ? arg['textAlign'] : TextAlign.start,
        cursorColor: (arg is Map && arg.containsKey('cursorColor')) ? arg['cursorColor'] : null,
        showCursor: (arg is Map && arg.containsKey('showCursor')) ? arg['showCursor'] : null,
        hasFocus: (arg is Map && arg.containsKey('hasFocus')) ? arg['hasFocus'] : null,
        maxLines: (arg is Map && arg.containsKey('maxLines')) ? arg['maxLines'] : 1,
        selectionColor: (arg is Map && arg.containsKey('selectionColor')) ? arg['selectionColor'] : null,
        textScaleFactor: (arg is Map && arg.containsKey('textScaleFactor')) ? arg['textScaleFactor'] : 1.0,
        selection: (arg is Map && arg.containsKey('selection')) ? arg['selection'] : null,
        /*@required*/ offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : null,
        onSelectionChanged: (arg is Map && arg.containsKey('onSelectionChanged')) ? arg['onSelectionChanged'] : null,
        onCaretChanged: (arg is Map && arg.containsKey('onCaretChanged')) ? arg['onCaretChanged'] : null,
        ignorePointer: (arg is Map && arg.containsKey('ignorePointer')) ? arg['ignorePointer'] : false,
        obscureText: (arg is Map && arg.containsKey('obscureText')) ? arg['obscureText'] : false
    );
}


// flutter/packages/flutter/lib/src/rendering/flex.dart
RenderFlex _createRenderFlexWidget([arg]) {
    return new RenderFlex(
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        direction: (arg is Map && arg.containsKey('direction')) ? arg['direction'] : Axis.horizontal,
        mainAxisSize: (arg is Map && arg.containsKey('mainAxisSize')) ? arg['mainAxisSize'] : MainAxisSize.max,
        mainAxisAlignment: (arg is Map && arg.containsKey('mainAxisAlignment')) ? arg['mainAxisAlignment'] : MainAxisAlignment.start,
        crossAxisAlignment: (arg is Map && arg.containsKey('crossAxisAlignment')) ? arg['crossAxisAlignment'] : CrossAxisAlignment.center,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        verticalDirection: (arg is Map && arg.containsKey('verticalDirection')) ? arg['verticalDirection'] : VerticalDirection.down,
        textBaseline: (arg is Map && arg.containsKey('textBaseline')) ? arg['textBaseline'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/flow.dart
RenderFlow _createRenderFlowWidget([arg]) {
    return new RenderFlow(
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/image.dart
RenderImage _createRenderImageWidget([arg]) {
    return new RenderImage(
        image: (arg is Map && arg.containsKey('image')) ? arg['image'] : null,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : 1.0,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        colorBlendMode: (arg is Map && arg.containsKey('colorBlendMode')) ? arg['colorBlendMode'] : null,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        repeat: (arg is Map && arg.containsKey('repeat')) ? arg['repeat'] : ImageRepeat.noRepeat,
        centerSlice: (arg is Map && arg.containsKey('centerSlice')) ? arg['centerSlice'] : null,
        matchTextDirection: (arg is Map && arg.containsKey('matchTextDirection')) ? arg['matchTextDirection'] : false,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
TextureLayer _createTextureLayerWidget([arg]) {
    return new TextureLayer(
        /*@required*/ rect: (arg is Map && arg.containsKey('rect')) ? arg['rect'] : null,
        /*@required*/ textureId: (arg is Map && arg.containsKey('textureId')) ? arg['textureId'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
PerformanceOverlayLayer _createPerformanceOverlayLayerWidget([arg]) {
    return new PerformanceOverlayLayer(
        /*@required*/ overlayRect: (arg is Map && arg.containsKey('overlayRect')) ? arg['overlayRect'] : null,
        /*@required*/ optionsMask: (arg is Map && arg.containsKey('optionsMask')) ? arg['optionsMask'] : null,
        /*@required*/ rasterizerThreshold: (arg is Map && arg.containsKey('rasterizerThreshold')) ? arg['rasterizerThreshold'] : null,
        /*@required*/ checkerboardRasterCacheImages: (arg is Map && arg.containsKey('checkerboardRasterCacheImages')) ? arg['checkerboardRasterCacheImages'] : null,
        /*@required*/ checkerboardOffscreenLayers: (arg is Map && arg.containsKey('checkerboardOffscreenLayers')) ? arg['checkerboardOffscreenLayers'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
OffsetLayer _createOffsetLayerWidget([arg]) {
    return new OffsetLayer(
        offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : Offset.zero
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
ClipRectLayer _createClipRectLayerWidget([arg]) {
    return new ClipRectLayer(
        clipRect: (arg is Map && arg.containsKey('clipRect')) ? arg['clipRect'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
ClipRRectLayer _createClipRRectLayerWidget([arg]) {
    return new ClipRRectLayer(
        clipRRect: (arg is Map && arg.containsKey('clipRRect')) ? arg['clipRRect'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
ClipPathLayer _createClipPathLayerWidget([arg]) {
    return new ClipPathLayer(
        clipPath: (arg is Map && arg.containsKey('clipPath')) ? arg['clipPath'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
TransformLayer _createTransformLayerWidget([arg]) {
    return new TransformLayer(
        transform: (arg is Map && arg.containsKey('transform')) ? arg['transform'] : null,
        offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : Offset.zero
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
OpacityLayer _createOpacityLayerWidget([arg]) {
    return new OpacityLayer(
        alpha: (arg is Map && arg.containsKey('alpha')) ? arg['alpha'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
ShaderMaskLayer _createShaderMaskLayerWidget([arg]) {
    return new ShaderMaskLayer(
        shader: (arg is Map && arg.containsKey('shader')) ? arg['shader'] : null,
        maskRect: (arg is Map && arg.containsKey('maskRect')) ? arg['maskRect'] : null,
        blendMode: (arg is Map && arg.containsKey('blendMode')) ? arg['blendMode'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
BackdropFilterLayer _createBackdropFilterLayerWidget([arg]) {
    return new BackdropFilterLayer(
        filter: (arg is Map && arg.containsKey('filter')) ? arg['filter'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
PhysicalModelLayer _createPhysicalModelLayerWidget([arg]) {
    return new PhysicalModelLayer(
        /*@required*/ clipPath: (arg is Map && arg.containsKey('clipPath')) ? arg['clipPath'] : null,
        /*@required*/ elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : null,
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        /*@required*/ shadowColor: (arg is Map && arg.containsKey('shadowColor')) ? arg['shadowColor'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
LeaderLayer _createLeaderLayerWidget([arg]) {
    return new LeaderLayer(
        /*@required*/ link: (arg is Map && arg.containsKey('link')) ? arg['link'] : null,
        offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : Offset.zero
    );
}


// flutter/packages/flutter/lib/src/rendering/layer.dart
FollowerLayer _createFollowerLayerWidget([arg]) {
    return new FollowerLayer(
        /*@required*/ link: (arg is Map && arg.containsKey('link')) ? arg['link'] : null,
        showWhenUnlinked: (arg is Map && arg.containsKey('showWhenUnlinked')) ? arg['showWhenUnlinked'] : true,
        unlinkedOffset: (arg is Map && arg.containsKey('unlinkedOffset')) ? arg['unlinkedOffset'] : Offset.zero,
        linkedOffset: (arg is Map && arg.containsKey('linkedOffset')) ? arg['linkedOffset'] : Offset.zero
    );
}


// flutter/packages/flutter/lib/src/rendering/list_body.dart
RenderListBody _createRenderListBodyWidget([arg]) {
    return new RenderListBody(
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : AxisDirection.down
    );
}


// flutter/packages/flutter/lib/src/rendering/list_wheel_viewport.dart
RenderListWheelViewport _createRenderListWheelViewportWidget([arg]) {
    return new RenderListWheelViewport(
        /*@required*/ offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : null,
        diameterRatio: (arg is Map && arg.containsKey('diameterRatio')) ? arg['diameterRatio'] : defaultDiameterRatio,
        perspective: (arg is Map && arg.containsKey('perspective')) ? arg['perspective'] : defaultPerspective,
        /*@required*/ itemExtent: (arg is Map && arg.containsKey('itemExtent')) ? arg['itemExtent'] : null,
        clipToSize: (arg is Map && arg.containsKey('clipToSize')) ? arg['clipToSize'] : true,
        renderChildrenOutsideViewport: (arg is Map && arg.containsKey('renderChildrenOutsideViewport')) ? arg['renderChildrenOutsideViewport'] : false,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/object.dart
PipelineOwner _createPipelineOwnerWidget([arg]) {
    return new PipelineOwner(
        onNeedVisualUpdate: (arg is Map && arg.containsKey('onNeedVisualUpdate')) ? arg['onNeedVisualUpdate'] : null,
        onSemanticsOwnerCreated: (arg is Map && arg.containsKey('onSemanticsOwnerCreated')) ? arg['onSemanticsOwnerCreated'] : null,
        onSemanticsOwnerDisposed: (arg is Map && arg.containsKey('onSemanticsOwnerDisposed')) ? arg['onSemanticsOwnerDisposed'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/object.dart
FlutterErrorDetailsForRendering _createFlutterErrorDetailsForRenderingWidget([arg]) {
    return new FlutterErrorDetailsForRendering(
        exception: (arg is Map && arg.containsKey('exception')) ? arg['exception'] : null,
        stack: (arg is Map && arg.containsKey('stack')) ? arg['stack'] : null,
        library: (arg is Map && arg.containsKey('library')) ? arg['library'] : null,
        context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        renderObject: (arg is Map && arg.containsKey('renderObject')) ? arg['renderObject'] : null,
        informationCollector: (arg is Map && arg.containsKey('informationCollector')) ? arg['informationCollector'] : null,
        silent: (arg is Map && arg.containsKey('silent')) ? arg['silent'] : false
    );
}


// flutter/packages/flutter/lib/src/rendering/performance_overlay.dart
RenderPerformanceOverlay _createRenderPerformanceOverlayWidget([arg]) {
    return new RenderPerformanceOverlay(
        optionsMask: (arg is Map && arg.containsKey('optionsMask')) ? arg['optionsMask'] : 0,
        rasterizerThreshold: (arg is Map && arg.containsKey('rasterizerThreshold')) ? arg['rasterizerThreshold'] : 0,
        checkerboardRasterCacheImages: (arg is Map && arg.containsKey('checkerboardRasterCacheImages')) ? arg['checkerboardRasterCacheImages'] : false,
        checkerboardOffscreenLayers: (arg is Map && arg.containsKey('checkerboardOffscreenLayers')) ? arg['checkerboardOffscreenLayers'] : false
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderConstrainedBox _createRenderConstrainedBoxWidget([arg]) {
    return new RenderConstrainedBox(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ additionalConstraints: (arg is Map && arg.containsKey('additionalConstraints')) ? arg['additionalConstraints'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderLimitedBox _createRenderLimitedBoxWidget([arg]) {
    return new RenderLimitedBox(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        maxWidth: (arg is Map && arg.containsKey('maxWidth')) ? arg['maxWidth'] : double.infinity,
        maxHeight: (arg is Map && arg.containsKey('maxHeight')) ? arg['maxHeight'] : double.infinity
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderAspectRatio _createRenderAspectRatioWidget([arg]) {
    return new RenderAspectRatio(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ aspectRatio: (arg is Map && arg.containsKey('aspectRatio')) ? arg['aspectRatio'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderIntrinsicWidth _createRenderIntrinsicWidthWidget([arg]) {
    return new RenderIntrinsicWidth(
        stepWidth: (arg is Map && arg.containsKey('stepWidth')) ? arg['stepWidth'] : null,
        stepHeight: (arg is Map && arg.containsKey('stepHeight')) ? arg['stepHeight'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderIntrinsicHeight _createRenderIntrinsicHeightWidget([arg]) {
    return new RenderIntrinsicHeight(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderOpacity _createRenderOpacityWidget([arg]) {
    return new RenderOpacity(
        opacity: (arg is Map && arg.containsKey('opacity')) ? arg['opacity'] : 1.0,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderAnimatedOpacity _createRenderAnimatedOpacityWidget([arg]) {
    return new RenderAnimatedOpacity(
        /*@required*/ opacity: (arg is Map && arg.containsKey('opacity')) ? arg['opacity'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderShaderMask _createRenderShaderMaskWidget([arg]) {
    return new RenderShaderMask(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ shaderCallback: (arg is Map && arg.containsKey('shaderCallback')) ? arg['shaderCallback'] : null,
        blendMode: (arg is Map && arg.containsKey('blendMode')) ? arg['blendMode'] : BlendMode.modulate
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderBackdropFilter _createRenderBackdropFilterWidget([arg]) {
    return new RenderBackdropFilter(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ filter: (arg is Map && arg.containsKey('filter')) ? arg['filter'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
ShapeBorderClipper _createShapeBorderClipperWidget([arg]) {
    return new ShapeBorderClipper(
        /*@required*/ shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderClipRect _createRenderClipRectWidget([arg]) {
    return new RenderClipRect(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        clipper: (arg is Map && arg.containsKey('clipper')) ? arg['clipper'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderClipRRect _createRenderClipRRectWidget([arg]) {
    return new RenderClipRRect(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : BorderRadius.zero,
        clipper: (arg is Map && arg.containsKey('clipper')) ? arg['clipper'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderClipOval _createRenderClipOvalWidget([arg]) {
    return new RenderClipOval(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        clipper: (arg is Map && arg.containsKey('clipper')) ? arg['clipper'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderClipPath _createRenderClipPathWidget([arg]) {
    return new RenderClipPath(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        clipper: (arg is Map && arg.containsKey('clipper')) ? arg['clipper'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderPhysicalModel _createRenderPhysicalModelWidget([arg]) {
    return new RenderPhysicalModel(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : BoxShape.rectangle,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 0.0,
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        shadowColor: (arg is Map && arg.containsKey('shadowColor')) ? arg['shadowColor'] : const Color(0xFF000000)
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderPhysicalShape _createRenderPhysicalShapeWidget([arg]) {
    return new RenderPhysicalShape(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ clipper: (arg is Map && arg.containsKey('clipper')) ? arg['clipper'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 0.0,
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        shadowColor: (arg is Map && arg.containsKey('shadowColor')) ? arg['shadowColor'] : const Color(0xFF000000)
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderDecoratedBox _createRenderDecoratedBoxWidget([arg]) {
    return new RenderDecoratedBox(
        /*@required*/ decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        position: (arg is Map && arg.containsKey('position')) ? arg['position'] : DecorationPosition.background,
        configuration: (arg is Map && arg.containsKey('configuration')) ? arg['configuration'] : ImageConfiguration.empty,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderTransform _createRenderTransformWidget([arg]) {
    return new RenderTransform(
        /*@required*/ transform: (arg is Map && arg.containsKey('transform')) ? arg['transform'] : null,
        origin: (arg is Map && arg.containsKey('origin')) ? arg['origin'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        transformHitTests: (arg is Map && arg.containsKey('transformHitTests')) ? arg['transformHitTests'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderFittedBox _createRenderFittedBoxWidget([arg]) {
    return new RenderFittedBox(
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : BoxFit.contain,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderFractionalTranslation _createRenderFractionalTranslationWidget([arg]) {
    return new RenderFractionalTranslation(
        /*@required*/ translation: (arg is Map && arg.containsKey('translation')) ? arg['translation'] : null,
        transformHitTests: (arg is Map && arg.containsKey('transformHitTests')) ? arg['transformHitTests'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderPointerListener _createRenderPointerListenerWidget([arg]) {
    return new RenderPointerListener(
        onPointerDown: (arg is Map && arg.containsKey('onPointerDown')) ? arg['onPointerDown'] : null,
        onPointerMove: (arg is Map && arg.containsKey('onPointerMove')) ? arg['onPointerMove'] : null,
        onPointerUp: (arg is Map && arg.containsKey('onPointerUp')) ? arg['onPointerUp'] : null,
        onPointerCancel: (arg is Map && arg.containsKey('onPointerCancel')) ? arg['onPointerCancel'] : null,
        behavior: (arg is Map && arg.containsKey('behavior')) ? arg['behavior'] : HitTestBehavior.deferToChild,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderRepaintBoundary _createRenderRepaintBoundaryWidget([arg]) {
    return new RenderRepaintBoundary(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderIgnorePointer _createRenderIgnorePointerWidget([arg]) {
    return new RenderIgnorePointer(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        ignoring: (arg is Map && arg.containsKey('ignoring')) ? arg['ignoring'] : true,
        ignoringSemantics: (arg is Map && arg.containsKey('ignoringSemantics')) ? arg['ignoringSemantics'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderOffstage _createRenderOffstageWidget([arg]) {
    return new RenderOffstage(
        offstage: (arg is Map && arg.containsKey('offstage')) ? arg['offstage'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderAbsorbPointer _createRenderAbsorbPointerWidget([arg]) {
    return new RenderAbsorbPointer(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        absorbing: (arg is Map && arg.containsKey('absorbing')) ? arg['absorbing'] : true
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderMetaData _createRenderMetaDataWidget([arg]) {
    return new RenderMetaData(
        metaData: (arg is Map && arg.containsKey('metaData')) ? arg['metaData'] : null,
        behavior: (arg is Map && arg.containsKey('behavior')) ? arg['behavior'] : HitTestBehavior.deferToChild,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderSemanticsGestureHandler _createRenderSemanticsGestureHandlerWidget([arg]) {
    return new RenderSemanticsGestureHandler(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null,
        onLongPress: (arg is Map && arg.containsKey('onLongPress')) ? arg['onLongPress'] : null,
        onHorizontalDragUpdate: (arg is Map && arg.containsKey('onHorizontalDragUpdate')) ? arg['onHorizontalDragUpdate'] : null,
        onVerticalDragUpdate: (arg is Map && arg.containsKey('onVerticalDragUpdate')) ? arg['onVerticalDragUpdate'] : null,
        scrollFactor: (arg is Map && arg.containsKey('scrollFactor')) ? arg['scrollFactor'] : 0.8
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderSemanticsAnnotations _createRenderSemanticsAnnotationsWidget([arg]) {
    return new RenderSemanticsAnnotations(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        container: (arg is Map && arg.containsKey('container')) ? arg['container'] : false,
        explicitChildNodes: (arg is Map && arg.containsKey('explicitChildNodes')) ? arg['explicitChildNodes'] : null,
        enabled: (arg is Map && arg.containsKey('enabled')) ? arg['enabled'] : null,
        checked: (arg is Map && arg.containsKey('checked')) ? arg['checked'] : null,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : null,
        button: (arg is Map && arg.containsKey('button')) ? arg['button'] : null,
        header: (arg is Map && arg.containsKey('header')) ? arg['header'] : null,
        textField: (arg is Map && arg.containsKey('textField')) ? arg['textField'] : null,
        focused: (arg is Map && arg.containsKey('focused')) ? arg['focused'] : null,
        inMutuallyExclusiveGroup: (arg is Map && arg.containsKey('inMutuallyExclusiveGroup')) ? arg['inMutuallyExclusiveGroup'] : null,
        obscured: (arg is Map && arg.containsKey('obscured')) ? arg['obscured'] : null,
        scopesRoute: (arg is Map && arg.containsKey('scopesRoute')) ? arg['scopesRoute'] : null,
        namesRoute: (arg is Map && arg.containsKey('namesRoute')) ? arg['namesRoute'] : null,
        hidden: (arg is Map && arg.containsKey('hidden')) ? arg['hidden'] : null,
        label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        increasedValue: (arg is Map && arg.containsKey('increasedValue')) ? arg['increasedValue'] : null,
        decreasedValue: (arg is Map && arg.containsKey('decreasedValue')) ? arg['decreasedValue'] : null,
        hint: (arg is Map && arg.containsKey('hint')) ? arg['hint'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        sortKey: (arg is Map && arg.containsKey('sortKey')) ? arg['sortKey'] : null,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null,
        onLongPress: (arg is Map && arg.containsKey('onLongPress')) ? arg['onLongPress'] : null,
        onScrollLeft: (arg is Map && arg.containsKey('onScrollLeft')) ? arg['onScrollLeft'] : null,
        onScrollRight: (arg is Map && arg.containsKey('onScrollRight')) ? arg['onScrollRight'] : null,
        onScrollUp: (arg is Map && arg.containsKey('onScrollUp')) ? arg['onScrollUp'] : null,
        onScrollDown: (arg is Map && arg.containsKey('onScrollDown')) ? arg['onScrollDown'] : null,
        onIncrease: (arg is Map && arg.containsKey('onIncrease')) ? arg['onIncrease'] : null,
        onDecrease: (arg is Map && arg.containsKey('onDecrease')) ? arg['onDecrease'] : null,
        onCopy: (arg is Map && arg.containsKey('onCopy')) ? arg['onCopy'] : null,
        onCut: (arg is Map && arg.containsKey('onCut')) ? arg['onCut'] : null,
        onPaste: (arg is Map && arg.containsKey('onPaste')) ? arg['onPaste'] : null,
        onMoveCursorForwardByCharacter: (arg is Map && arg.containsKey('onMoveCursorForwardByCharacter')) ? arg['onMoveCursorForwardByCharacter'] : null,
        onMoveCursorBackwardByCharacter: (arg is Map && arg.containsKey('onMoveCursorBackwardByCharacter')) ? arg['onMoveCursorBackwardByCharacter'] : null,
        onSetSelection: (arg is Map && arg.containsKey('onSetSelection')) ? arg['onSetSelection'] : null,
        onDidGainAccessibilityFocus: (arg is Map && arg.containsKey('onDidGainAccessibilityFocus')) ? arg['onDidGainAccessibilityFocus'] : null,
        onDidLoseAccessibilityFocus: (arg is Map && arg.containsKey('onDidLoseAccessibilityFocus')) ? arg['onDidLoseAccessibilityFocus'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderBlockSemantics _createRenderBlockSemanticsWidget([arg]) {
    return new RenderBlockSemantics(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        blocking: (arg is Map && arg.containsKey('blocking')) ? arg['blocking'] : true
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderMergeSemantics _createRenderMergeSemanticsWidget([arg]) {
    return new RenderMergeSemantics(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderExcludeSemantics _createRenderExcludeSemanticsWidget([arg]) {
    return new RenderExcludeSemantics(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        excluding: (arg is Map && arg.containsKey('excluding')) ? arg['excluding'] : true
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderLeaderLayer _createRenderLeaderLayerWidget([arg]) {
    return new RenderLeaderLayer(
        /*@required*/ link: (arg is Map && arg.containsKey('link')) ? arg['link'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/proxy_box.dart
RenderFollowerLayer _createRenderFollowerLayerWidget([arg]) {
    return new RenderFollowerLayer(
        /*@required*/ link: (arg is Map && arg.containsKey('link')) ? arg['link'] : null,
        showWhenUnlinked: (arg is Map && arg.containsKey('showWhenUnlinked')) ? arg['showWhenUnlinked'] : true,
        offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : Offset.zero,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/rotated_box.dart
RenderRotatedBox _createRenderRotatedBoxWidget([arg]) {
    return new RenderRotatedBox(
        /*@required*/ quarterTurns: (arg is Map && arg.containsKey('quarterTurns')) ? arg['quarterTurns'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/shifted_box.dart
RenderPadding _createRenderPaddingWidget([arg]) {
    return new RenderPadding(
        /*@required*/ padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/shifted_box.dart
RenderPositionedBox _createRenderPositionedBoxWidget([arg]) {
    return new RenderPositionedBox(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        widthFactor: (arg is Map && arg.containsKey('widthFactor')) ? arg['widthFactor'] : null,
        heightFactor: (arg is Map && arg.containsKey('heightFactor')) ? arg['heightFactor'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/shifted_box.dart
RenderConstrainedOverflowBox _createRenderConstrainedOverflowBoxWidget([arg]) {
    return new RenderConstrainedOverflowBox(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        minWidth: (arg is Map && arg.containsKey('minWidth')) ? arg['minWidth'] : null,
        maxWidth: (arg is Map && arg.containsKey('maxWidth')) ? arg['maxWidth'] : null,
        minHeight: (arg is Map && arg.containsKey('minHeight')) ? arg['minHeight'] : null,
        maxHeight: (arg is Map && arg.containsKey('maxHeight')) ? arg['maxHeight'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/shifted_box.dart
RenderUnconstrainedBox _createRenderUnconstrainedBoxWidget([arg]) {
    return new RenderUnconstrainedBox(
        /*@required*/ alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : null,
        /*@required*/ textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        constrainedAxis: (arg is Map && arg.containsKey('constrainedAxis')) ? arg['constrainedAxis'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/shifted_box.dart
RenderSizedOverflowBox _createRenderSizedOverflowBoxWidget([arg]) {
    return new RenderSizedOverflowBox(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ requestedSize: (arg is Map && arg.containsKey('requestedSize')) ? arg['requestedSize'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/shifted_box.dart
RenderFractionallySizedOverflowBox _createRenderFractionallySizedOverflowBoxWidget([arg]) {
    return new RenderFractionallySizedOverflowBox(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        widthFactor: (arg is Map && arg.containsKey('widthFactor')) ? arg['widthFactor'] : null,
        heightFactor: (arg is Map && arg.containsKey('heightFactor')) ? arg['heightFactor'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/shifted_box.dart
RenderCustomSingleChildLayoutBox _createRenderCustomSingleChildLayoutBoxWidget([arg]) {
    return new RenderCustomSingleChildLayoutBox(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/shifted_box.dart
RenderBaseline _createRenderBaselineWidget([arg]) {
    return new RenderBaseline(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ baseline: (arg is Map && arg.containsKey('baseline')) ? arg['baseline'] : null,
        /*@required*/ baselineType: (arg is Map && arg.containsKey('baselineType')) ? arg['baselineType'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver_fill.dart
RenderSliverFillViewport _createRenderSliverFillViewportWidget([arg]) {
    return new RenderSliverFillViewport(
        /*@required*/ childManager: (arg is Map && arg.containsKey('childManager')) ? arg['childManager'] : null,
        viewportFraction: (arg is Map && arg.containsKey('viewportFraction')) ? arg['viewportFraction'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver_fill.dart
RenderSliverFillRemaining _createRenderSliverFillRemainingWidget([arg]) {
    return new RenderSliverFillRemaining(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver_fixed_extent_list.dart
RenderSliverFixedExtentList _createRenderSliverFixedExtentListWidget([arg]) {
    return new RenderSliverFixedExtentList(
        /*@required*/ childManager: (arg is Map && arg.containsKey('childManager')) ? arg['childManager'] : null,
        itemExtent: (arg is Map && arg.containsKey('itemExtent')) ? arg['itemExtent'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver_grid.dart
SliverGridGeometry _createSliverGridGeometryWidget([arg]) {
    return new SliverGridGeometry(
        /*@required*/ scrollOffset: (arg is Map && arg.containsKey('scrollOffset')) ? arg['scrollOffset'] : null,
        /*@required*/ crossAxisOffset: (arg is Map && arg.containsKey('crossAxisOffset')) ? arg['crossAxisOffset'] : null,
        /*@required*/ mainAxisExtent: (arg is Map && arg.containsKey('mainAxisExtent')) ? arg['mainAxisExtent'] : null,
        /*@required*/ crossAxisExtent: (arg is Map && arg.containsKey('crossAxisExtent')) ? arg['crossAxisExtent'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver_grid.dart
SliverGridRegularTileLayout _createSliverGridRegularTileLayoutWidget([arg]) {
    return new SliverGridRegularTileLayout(
        /*@required*/ crossAxisCount: (arg is Map && arg.containsKey('crossAxisCount')) ? arg['crossAxisCount'] : null,
        /*@required*/ mainAxisStride: (arg is Map && arg.containsKey('mainAxisStride')) ? arg['mainAxisStride'] : null,
        /*@required*/ crossAxisStride: (arg is Map && arg.containsKey('crossAxisStride')) ? arg['crossAxisStride'] : null,
        /*@required*/ childMainAxisExtent: (arg is Map && arg.containsKey('childMainAxisExtent')) ? arg['childMainAxisExtent'] : null,
        /*@required*/ childCrossAxisExtent: (arg is Map && arg.containsKey('childCrossAxisExtent')) ? arg['childCrossAxisExtent'] : null,
        /*@required*/ reverseCrossAxis: (arg is Map && arg.containsKey('reverseCrossAxis')) ? arg['reverseCrossAxis'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver_grid.dart
SliverGridDelegateWithFixedCrossAxisCount _createSliverGridDelegateWithFixedCrossAxisCountWidget([arg]) {
    return new SliverGridDelegateWithFixedCrossAxisCount(
        /*@required*/ crossAxisCount: (arg is Map && arg.containsKey('crossAxisCount')) ? arg['crossAxisCount'] : null,
        mainAxisSpacing: (arg is Map && arg.containsKey('mainAxisSpacing')) ? arg['mainAxisSpacing'] : 0.0,
        crossAxisSpacing: (arg is Map && arg.containsKey('crossAxisSpacing')) ? arg['crossAxisSpacing'] : 0.0,
        childAspectRatio: (arg is Map && arg.containsKey('childAspectRatio')) ? arg['childAspectRatio'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver_grid.dart
SliverGridDelegateWithMaxCrossAxisExtent _createSliverGridDelegateWithMaxCrossAxisExtentWidget([arg]) {
    return new SliverGridDelegateWithMaxCrossAxisExtent(
        /*@required*/ maxCrossAxisExtent: (arg is Map && arg.containsKey('maxCrossAxisExtent')) ? arg['maxCrossAxisExtent'] : null,
        mainAxisSpacing: (arg is Map && arg.containsKey('mainAxisSpacing')) ? arg['mainAxisSpacing'] : 0.0,
        crossAxisSpacing: (arg is Map && arg.containsKey('crossAxisSpacing')) ? arg['crossAxisSpacing'] : 0.0,
        childAspectRatio: (arg is Map && arg.containsKey('childAspectRatio')) ? arg['childAspectRatio'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver_grid.dart
RenderSliverGrid _createRenderSliverGridWidget([arg]) {
    return new RenderSliverGrid(
        /*@required*/ childManager: (arg is Map && arg.containsKey('childManager')) ? arg['childManager'] : null,
        /*@required*/ gridDelegate: (arg is Map && arg.containsKey('gridDelegate')) ? arg['gridDelegate'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver_list.dart
RenderSliverList _createRenderSliverListWidget([arg]) {
    return new RenderSliverList(
        /*@required*/ childManager: (arg is Map && arg.containsKey('childManager')) ? arg['childManager'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver_padding.dart
RenderSliverPadding _createRenderSliverPaddingWidget([arg]) {
    return new RenderSliverPadding(
        /*@required*/ padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver_persistent_header.dart
FloatingHeaderSnapConfiguration _createFloatingHeaderSnapConfigurationWidget([arg]) {
    return new FloatingHeaderSnapConfiguration(
        /*@required*/ vsync: (arg is Map && arg.containsKey('vsync')) ? arg['vsync'] : null,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.ease,
        duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : const Duration(milliseconds : 300)
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver.dart
SliverConstraints _createSliverConstraintsWidget([arg]) {
    return new SliverConstraints(
        /*@required*/ axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : null,
        /*@required*/ growthDirection: (arg is Map && arg.containsKey('growthDirection')) ? arg['growthDirection'] : null,
        /*@required*/ userScrollDirection: (arg is Map && arg.containsKey('userScrollDirection')) ? arg['userScrollDirection'] : null,
        /*@required*/ scrollOffset: (arg is Map && arg.containsKey('scrollOffset')) ? arg['scrollOffset'] : null,
        /*@required*/ overlap: (arg is Map && arg.containsKey('overlap')) ? arg['overlap'] : null,
        /*@required*/ remainingPaintExtent: (arg is Map && arg.containsKey('remainingPaintExtent')) ? arg['remainingPaintExtent'] : null,
        /*@required*/ crossAxisExtent: (arg is Map && arg.containsKey('crossAxisExtent')) ? arg['crossAxisExtent'] : null,
        /*@required*/ crossAxisDirection: (arg is Map && arg.containsKey('crossAxisDirection')) ? arg['crossAxisDirection'] : null,
        /*@required*/ viewportMainAxisExtent: (arg is Map && arg.containsKey('viewportMainAxisExtent')) ? arg['viewportMainAxisExtent'] : null,
        /*@required*/ remainingCacheExtent: (arg is Map && arg.containsKey('remainingCacheExtent')) ? arg['remainingCacheExtent'] : null,
        /*@required*/ cacheOrigin: (arg is Map && arg.containsKey('cacheOrigin')) ? arg['cacheOrigin'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver.dart
SliverGeometry _createSliverGeometryWidget([arg]) {
    return new SliverGeometry(
        scrollExtent: (arg is Map && arg.containsKey('scrollExtent')) ? arg['scrollExtent'] : 0.0,
        paintExtent: (arg is Map && arg.containsKey('paintExtent')) ? arg['paintExtent'] : 0.0,
        paintOrigin: (arg is Map && arg.containsKey('paintOrigin')) ? arg['paintOrigin'] : 0.0,
        layoutExtent: (arg is Map && arg.containsKey('layoutExtent')) ? arg['layoutExtent'] : null,
        maxPaintExtent: (arg is Map && arg.containsKey('maxPaintExtent')) ? arg['maxPaintExtent'] : 0.0,
        maxScrollObstructionExtent: (arg is Map && arg.containsKey('maxScrollObstructionExtent')) ? arg['maxScrollObstructionExtent'] : 0.0,
        hitTestExtent: (arg is Map && arg.containsKey('hitTestExtent')) ? arg['hitTestExtent'] : null,
        visible: (arg is Map && arg.containsKey('visible')) ? arg['visible'] : null,
        hasVisualOverflow: (arg is Map && arg.containsKey('hasVisualOverflow')) ? arg['hasVisualOverflow'] : false,
        scrollOffsetCorrection: (arg is Map && arg.containsKey('scrollOffsetCorrection')) ? arg['scrollOffsetCorrection'] : null,
        cacheExtent: (arg is Map && arg.containsKey('cacheExtent')) ? arg['cacheExtent'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/sliver.dart
RenderSliverToBoxAdapter _createRenderSliverToBoxAdapterWidget([arg]) {
    return new RenderSliverToBoxAdapter(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/stack.dart
RenderStack _createRenderStackWidget([arg]) {
    return new RenderStack(
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : AlignmentDirectional.topStart,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : StackFit.loose,
        overflow: (arg is Map && arg.containsKey('overflow')) ? arg['overflow'] : Overflow.clip
    );
}


// flutter/packages/flutter/lib/src/rendering/stack.dart
RenderIndexedStack _createRenderIndexedStackWidget([arg]) {
    return new RenderIndexedStack(
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : AlignmentDirectional.topStart,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        index: (arg is Map && arg.containsKey('index')) ? arg['index'] : 0
    );
}


// flutter/packages/flutter/lib/src/rendering/table_border.dart
TableBorder _createTableBorderWidget([arg]) {
    return new TableBorder(
        top: (arg is Map && arg.containsKey('top')) ? arg['top'] : BorderSide.none,
        right: (arg is Map && arg.containsKey('right')) ? arg['right'] : BorderSide.none,
        bottom: (arg is Map && arg.containsKey('bottom')) ? arg['bottom'] : BorderSide.none,
        left: (arg is Map && arg.containsKey('left')) ? arg['left'] : BorderSide.none,
        horizontalInside: (arg is Map && arg.containsKey('horizontalInside')) ? arg['horizontalInside'] : BorderSide.none,
        verticalInside: (arg is Map && arg.containsKey('verticalInside')) ? arg['verticalInside'] : BorderSide.none
    );
}


// flutter/packages/flutter/lib/src/rendering/table_border.dart
TableBorder _createTableBorder_allWidget([arg]) {
    return TableBorder.all(
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : const Color(0xFF000000),
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : 1.0,
        style: (arg is Map && arg.containsKey('style')) ? arg['style'] : BorderStyle.solid
    );
}


// flutter/packages/flutter/lib/src/rendering/table.dart
IntrinsicColumnWidth _createIntrinsicColumnWidthWidget([arg]) {
    return new IntrinsicColumnWidth(
        flex: (arg is Map && arg.containsKey('flex')) ? arg['flex'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/table.dart
RenderTable _createRenderTableWidget([arg]) {
    return new RenderTable(
        columns: (arg is Map && arg.containsKey('columns')) ? arg['columns'] : null,
        rows: (arg is Map && arg.containsKey('rows')) ? arg['rows'] : null,
        columnWidths: (arg is Map && arg.containsKey('columnWidths')) ? arg['columnWidths'] : null,
        defaultColumnWidth: (arg is Map && arg.containsKey('defaultColumnWidth')) ? arg['defaultColumnWidth'] : const FlexColumnWidth(1.0),
        /*@required*/ textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        border: (arg is Map && arg.containsKey('border')) ? arg['border'] : null,
        rowDecorations: (arg is Map && arg.containsKey('rowDecorations')) ? arg['rowDecorations'] : null,
        configuration: (arg is Map && arg.containsKey('configuration')) ? arg['configuration'] : ImageConfiguration.empty,
        defaultRowDecoration: (arg is Map && arg.containsKey('defaultRowDecoration')) ? arg['defaultRowDecoration'] : null,
        defaultVerticalAlignment: (arg is Map && arg.containsKey('defaultVerticalAlignment')) ? arg['defaultVerticalAlignment'] : TableCellVerticalAlignment.top,
        textBaseline: (arg is Map && arg.containsKey('textBaseline')) ? arg['textBaseline'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/texture.dart
TextureBox _createTextureBoxWidget([arg]) {
    return new TextureBox(
        /*@required*/ textureId: (arg is Map && arg.containsKey('textureId')) ? arg['textureId'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/tweens.dart
FractionalOffsetTween _createFractionalOffsetTweenWidget([arg]) {
    return new FractionalOffsetTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/tweens.dart
AlignmentTween _createAlignmentTweenWidget([arg]) {
    return new AlignmentTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/tweens.dart
AlignmentGeometryTween _createAlignmentGeometryTweenWidget([arg]) {
    return new AlignmentGeometryTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/view.dart
ViewConfiguration _createViewConfigurationWidget([arg]) {
    return new ViewConfiguration(
        size: (arg is Map && arg.containsKey('size')) ? arg['size'] : Size.zero,
        devicePixelRatio: (arg is Map && arg.containsKey('devicePixelRatio')) ? arg['devicePixelRatio'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/rendering/view.dart
RenderView _createRenderViewWidget([arg]) {
    return new RenderView(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ configuration: (arg is Map && arg.containsKey('configuration')) ? arg['configuration'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/viewport.dart
RenderViewport _createRenderViewportWidget([arg]) {
    return new RenderViewport(
        axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : AxisDirection.down,
        /*@required*/ crossAxisDirection: (arg is Map && arg.containsKey('crossAxisDirection')) ? arg['crossAxisDirection'] : null,
        /*@required*/ offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : null,
        anchor: (arg is Map && arg.containsKey('anchor')) ? arg['anchor'] : 0.0,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        center: (arg is Map && arg.containsKey('center')) ? arg['center'] : null,
        cacheExtent: (arg is Map && arg.containsKey('cacheExtent')) ? arg['cacheExtent'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/viewport.dart
RenderShrinkWrappingViewport _createRenderShrinkWrappingViewportWidget([arg]) {
    return new RenderShrinkWrappingViewport(
        axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : AxisDirection.down,
        /*@required*/ crossAxisDirection: (arg is Map && arg.containsKey('crossAxisDirection')) ? arg['crossAxisDirection'] : null,
        /*@required*/ offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null
    );
}


// flutter/packages/flutter/lib/src/rendering/wrap.dart
RenderWrap _createRenderWrapWidget([arg]) {
    return new RenderWrap(
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        direction: (arg is Map && arg.containsKey('direction')) ? arg['direction'] : Axis.horizontal,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : WrapAlignment.start,
        spacing: (arg is Map && arg.containsKey('spacing')) ? arg['spacing'] : 0.0,
        runAlignment: (arg is Map && arg.containsKey('runAlignment')) ? arg['runAlignment'] : WrapAlignment.start,
        runSpacing: (arg is Map && arg.containsKey('runSpacing')) ? arg['runSpacing'] : 0.0,
        crossAxisAlignment: (arg is Map && arg.containsKey('crossAxisAlignment')) ? arg['crossAxisAlignment'] : WrapCrossAlignment.start,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        verticalDirection: (arg is Map && arg.containsKey('verticalDirection')) ? arg['verticalDirection'] : VerticalDirection.down
    );
}


// flutter/packages/flutter/lib/src/scheduler/ticker.dart
Ticker _createTickerWidget(data, [arg]) {
    return new Ticker(
        data,
        debugLabel: (arg is Map && arg.containsKey('debugLabel')) ? arg['debugLabel'] : null
    );
}


// flutter/packages/flutter/lib/src/semantics/semantics.dart
SemanticsData _createSemanticsDataWidget([arg]) {
    return new SemanticsData(
        /*@required*/ flags: (arg is Map && arg.containsKey('flags')) ? arg['flags'] : null,
        /*@required*/ actions: (arg is Map && arg.containsKey('actions')) ? arg['actions'] : null,
        /*@required*/ label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        /*@required*/ increasedValue: (arg is Map && arg.containsKey('increasedValue')) ? arg['increasedValue'] : null,
        /*@required*/ value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        /*@required*/ decreasedValue: (arg is Map && arg.containsKey('decreasedValue')) ? arg['decreasedValue'] : null,
        /*@required*/ hint: (arg is Map && arg.containsKey('hint')) ? arg['hint'] : null,
        /*@required*/ textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        /*@required*/ rect: (arg is Map && arg.containsKey('rect')) ? arg['rect'] : null,
        /*@required*/ textSelection: (arg is Map && arg.containsKey('textSelection')) ? arg['textSelection'] : null,
        /*@required*/ scrollPosition: (arg is Map && arg.containsKey('scrollPosition')) ? arg['scrollPosition'] : null,
        /*@required*/ scrollExtentMax: (arg is Map && arg.containsKey('scrollExtentMax')) ? arg['scrollExtentMax'] : null,
        /*@required*/ scrollExtentMin: (arg is Map && arg.containsKey('scrollExtentMin')) ? arg['scrollExtentMin'] : null,
        tags: (arg is Map && arg.containsKey('tags')) ? arg['tags'] : null,
        transform: (arg is Map && arg.containsKey('transform')) ? arg['transform'] : null
    );
}


// flutter/packages/flutter/lib/src/semantics/semantics.dart
SemanticsProperties _createSemanticsPropertiesWidget([arg]) {
    return new SemanticsProperties(
        enabled: (arg is Map && arg.containsKey('enabled')) ? arg['enabled'] : null,
        checked: (arg is Map && arg.containsKey('checked')) ? arg['checked'] : null,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : null,
        button: (arg is Map && arg.containsKey('button')) ? arg['button'] : null,
        header: (arg is Map && arg.containsKey('header')) ? arg['header'] : null,
        textField: (arg is Map && arg.containsKey('textField')) ? arg['textField'] : null,
        focused: (arg is Map && arg.containsKey('focused')) ? arg['focused'] : null,
        inMutuallyExclusiveGroup: (arg is Map && arg.containsKey('inMutuallyExclusiveGroup')) ? arg['inMutuallyExclusiveGroup'] : null,
        hidden: (arg is Map && arg.containsKey('hidden')) ? arg['hidden'] : null,
        obscured: (arg is Map && arg.containsKey('obscured')) ? arg['obscured'] : null,
        scopesRoute: (arg is Map && arg.containsKey('scopesRoute')) ? arg['scopesRoute'] : null,
        namesRoute: (arg is Map && arg.containsKey('namesRoute')) ? arg['namesRoute'] : null,
        label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        increasedValue: (arg is Map && arg.containsKey('increasedValue')) ? arg['increasedValue'] : null,
        decreasedValue: (arg is Map && arg.containsKey('decreasedValue')) ? arg['decreasedValue'] : null,
        hint: (arg is Map && arg.containsKey('hint')) ? arg['hint'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        sortKey: (arg is Map && arg.containsKey('sortKey')) ? arg['sortKey'] : null,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null,
        onLongPress: (arg is Map && arg.containsKey('onLongPress')) ? arg['onLongPress'] : null,
        onScrollLeft: (arg is Map && arg.containsKey('onScrollLeft')) ? arg['onScrollLeft'] : null,
        onScrollRight: (arg is Map && arg.containsKey('onScrollRight')) ? arg['onScrollRight'] : null,
        onScrollUp: (arg is Map && arg.containsKey('onScrollUp')) ? arg['onScrollUp'] : null,
        onScrollDown: (arg is Map && arg.containsKey('onScrollDown')) ? arg['onScrollDown'] : null,
        onIncrease: (arg is Map && arg.containsKey('onIncrease')) ? arg['onIncrease'] : null,
        onDecrease: (arg is Map && arg.containsKey('onDecrease')) ? arg['onDecrease'] : null,
        onCopy: (arg is Map && arg.containsKey('onCopy')) ? arg['onCopy'] : null,
        onCut: (arg is Map && arg.containsKey('onCut')) ? arg['onCut'] : null,
        onPaste: (arg is Map && arg.containsKey('onPaste')) ? arg['onPaste'] : null,
        onMoveCursorForwardByCharacter: (arg is Map && arg.containsKey('onMoveCursorForwardByCharacter')) ? arg['onMoveCursorForwardByCharacter'] : null,
        onMoveCursorBackwardByCharacter: (arg is Map && arg.containsKey('onMoveCursorBackwardByCharacter')) ? arg['onMoveCursorBackwardByCharacter'] : null,
        onSetSelection: (arg is Map && arg.containsKey('onSetSelection')) ? arg['onSetSelection'] : null,
        onDidGainAccessibilityFocus: (arg is Map && arg.containsKey('onDidGainAccessibilityFocus')) ? arg['onDidGainAccessibilityFocus'] : null,
        onDidLoseAccessibilityFocus: (arg is Map && arg.containsKey('onDidLoseAccessibilityFocus')) ? arg['onDidLoseAccessibilityFocus'] : null
    );
}


// flutter/packages/flutter/lib/src/semantics/semantics.dart
SemanticsNode _createSemanticsNodeWidget([arg]) {
    return new SemanticsNode(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        showOnScreen: (arg is Map && arg.containsKey('showOnScreen')) ? arg['showOnScreen'] : null
    );
}


// flutter/packages/flutter/lib/src/semantics/semantics.dart
SemanticsNode _createSemanticsNode_rootWidget([arg]) {
    return SemanticsNode.root(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        showOnScreen: (arg is Map && arg.containsKey('showOnScreen')) ? arg['showOnScreen'] : null,
        owner: (arg is Map && arg.containsKey('owner')) ? arg['owner'] : null
    );
}


// flutter/packages/flutter/lib/src/semantics/semantics.dart
OrdinalSortKey _createOrdinalSortKeyWidget(data, [arg]) {
    return new OrdinalSortKey(
        data,
        name: (arg is Map && arg.containsKey('name')) ? arg['name'] : null
    );
}


// flutter/packages/flutter/lib/src/services/clipboard.dart
ClipboardData _createClipboardDataWidget([arg]) {
    return new ClipboardData(
        text: (arg is Map && arg.containsKey('text')) ? arg['text'] : null
    );
}


// flutter/packages/flutter/lib/src/services/message_codec.dart
PlatformException _createPlatformExceptionWidget([arg]) {
    return new PlatformException(
        /*@required*/ code: (arg is Map && arg.containsKey('code')) ? arg['code'] : null,
        message: (arg is Map && arg.containsKey('message')) ? arg['message'] : null,
        details: (arg is Map && arg.containsKey('details')) ? arg['details'] : null
    );
}


// flutter/packages/flutter/lib/src/services/raw_keyboard.dart
RawKeyEventDataAndroid _createRawKeyEventDataAndroidWidget([arg]) {
    return new RawKeyEventDataAndroid(
        flags: (arg is Map && arg.containsKey('flags')) ? arg['flags'] : 0,
        codePoint: (arg is Map && arg.containsKey('codePoint')) ? arg['codePoint'] : 0,
        keyCode: (arg is Map && arg.containsKey('keyCode')) ? arg['keyCode'] : 0,
        scanCode: (arg is Map && arg.containsKey('scanCode')) ? arg['scanCode'] : 0,
        metaState: (arg is Map && arg.containsKey('metaState')) ? arg['metaState'] : 0
    );
}


// flutter/packages/flutter/lib/src/services/raw_keyboard.dart
RawKeyEventDataFuchsia _createRawKeyEventDataFuchsiaWidget([arg]) {
    return new RawKeyEventDataFuchsia(
        hidUsage: (arg is Map && arg.containsKey('hidUsage')) ? arg['hidUsage'] : 0,
        codePoint: (arg is Map && arg.containsKey('codePoint')) ? arg['codePoint'] : 0,
        modifiers: (arg is Map && arg.containsKey('modifiers')) ? arg['modifiers'] : 0
    );
}


// flutter/packages/flutter/lib/src/services/raw_keyboard.dart
RawKeyDownEvent _createRawKeyDownEventWidget([arg]) {
    return new RawKeyDownEvent(
        /*@required*/ data: (arg is Map && arg.containsKey('data')) ? arg['data'] : null
    );
}


// flutter/packages/flutter/lib/src/services/raw_keyboard.dart
RawKeyUpEvent _createRawKeyUpEventWidget([arg]) {
    return new RawKeyUpEvent(
        /*@required*/ data: (arg is Map && arg.containsKey('data')) ? arg['data'] : null
    );
}


// flutter/packages/flutter/lib/src/services/system_chrome.dart
ApplicationSwitcherDescription _createApplicationSwitcherDescriptionWidget([arg]) {
    return new ApplicationSwitcherDescription(
        label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        primaryColor: (arg is Map && arg.containsKey('primaryColor')) ? arg['primaryColor'] : null
    );
}


// flutter/packages/flutter/lib/src/services/system_chrome.dart
SystemUiOverlayStyle _createSystemUiOverlayStyleWidget([arg]) {
    return new SystemUiOverlayStyle(
        systemNavigationBarColor: (arg is Map && arg.containsKey('systemNavigationBarColor')) ? arg['systemNavigationBarColor'] : null,
        systemNavigationBarDividerColor: (arg is Map && arg.containsKey('systemNavigationBarDividerColor')) ? arg['systemNavigationBarDividerColor'] : null,
        systemNavigationBarIconBrightness: (arg is Map && arg.containsKey('systemNavigationBarIconBrightness')) ? arg['systemNavigationBarIconBrightness'] : null,
        statusBarColor: (arg is Map && arg.containsKey('statusBarColor')) ? arg['statusBarColor'] : null,
        statusBarBrightness: (arg is Map && arg.containsKey('statusBarBrightness')) ? arg['statusBarBrightness'] : null,
        statusBarIconBrightness: (arg is Map && arg.containsKey('statusBarIconBrightness')) ? arg['statusBarIconBrightness'] : null
    );
}


// flutter/packages/flutter/lib/src/services/text_editing.dart
TextRange _createTextRangeWidget([arg]) {
    return new TextRange(
        /*@required*/ start: (arg is Map && arg.containsKey('start')) ? arg['start'] : null,
        /*@required*/ end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/services/text_editing.dart
TextSelection _createTextSelectionWidget([arg]) {
    return new TextSelection(
        /*@required*/ baseOffset: (arg is Map && arg.containsKey('baseOffset')) ? arg['baseOffset'] : null,
        /*@required*/ extentOffset: (arg is Map && arg.containsKey('extentOffset')) ? arg['extentOffset'] : null,
        affinity: (arg is Map && arg.containsKey('affinity')) ? arg['affinity'] : TextAffinity.downstream,
        isDirectional: (arg is Map && arg.containsKey('isDirectional')) ? arg['isDirectional'] : false
    );
}


// flutter/packages/flutter/lib/src/services/text_editing.dart
TextSelection _createTextSelection_collapsedWidget([arg]) {
    return TextSelection.collapsed(
        /*@required*/ offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : null,
        affinity: (arg is Map && arg.containsKey('affinity')) ? arg['affinity'] : TextAffinity.downstream
    );
}


// flutter/packages/flutter/lib/src/services/text_formatter.dart
BlacklistingTextInputFormatter _createBlacklistingTextInputFormatterWidget(data, [arg]) {
    return new BlacklistingTextInputFormatter(
        data,
        replacementString: (arg is Map && arg.containsKey('replacementString')) ? arg['replacementString'] : ''
    );
}


// flutter/packages/flutter/lib/src/services/text_input.dart
TextInputConfiguration _createTextInputConfigurationWidget([arg]) {
    return new TextInputConfiguration(
        inputType: (arg is Map && arg.containsKey('inputType')) ? arg['inputType'] : TextInputType.text,
        obscureText: (arg is Map && arg.containsKey('obscureText')) ? arg['obscureText'] : false,
        autocorrect: (arg is Map && arg.containsKey('autocorrect')) ? arg['autocorrect'] : true,
        actionLabel: (arg is Map && arg.containsKey('actionLabel')) ? arg['actionLabel'] : null,
        inputAction: (arg is Map && arg.containsKey('inputAction')) ? arg['inputAction'] : TextInputAction.done
    );
}


// flutter/packages/flutter/lib/src/services/text_input.dart
TextEditingValue _createTextEditingValueWidget([arg]) {
    return new TextEditingValue(
        text: (arg is Map && arg.containsKey('text')) ? arg['text'] : '',
        selection: (arg is Map && arg.containsKey('selection')) ? arg['selection'] : const TextSelection.collapsed(offset : -1),
        composing: (arg is Map && arg.containsKey('composing')) ? arg['composing'] : TextRange.empty
    );
}


// flutter/packages/flutter/lib/src/widgets/animated_cross_fade.dart
AnimatedCrossFade _createAnimatedCrossFadeWidget([arg]) {
    return new AnimatedCrossFade(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ firstChild: (arg is Map && arg.containsKey('firstChild')) ? arg['firstChild'] : null,
        /*@required*/ secondChild: (arg is Map && arg.containsKey('secondChild')) ? arg['secondChild'] : null,
        firstCurve: (arg is Map && arg.containsKey('firstCurve')) ? arg['firstCurve'] : Curves.linear,
        secondCurve: (arg is Map && arg.containsKey('secondCurve')) ? arg['secondCurve'] : Curves.linear,
        sizeCurve: (arg is Map && arg.containsKey('sizeCurve')) ? arg['sizeCurve'] : Curves.linear,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.topCenter,
        /*@required*/ crossFadeState: (arg is Map && arg.containsKey('crossFadeState')) ? arg['crossFadeState'] : null,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null,
        layoutBuilder: (arg is Map && arg.containsKey('layoutBuilder')) ? arg['layoutBuilder'] : defaultLayoutBuilder
    );
}


// flutter/packages/flutter/lib/src/widgets/animated_list.dart
AnimatedList _createAnimatedListWidget([arg]) {
    return new AnimatedList(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ itemBuilder: (arg is Map && arg.containsKey('itemBuilder')) ? arg['itemBuilder'] : null,
        initialItemCount: (arg is Map && arg.containsKey('initialItemCount')) ? arg['initialItemCount'] : 0,
        scrollDirection: (arg is Map && arg.containsKey('scrollDirection')) ? arg['scrollDirection'] : Axis.vertical,
        reverse: (arg is Map && arg.containsKey('reverse')) ? arg['reverse'] : false,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        primary: (arg is Map && arg.containsKey('primary')) ? arg['primary'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        shrinkWrap: (arg is Map && arg.containsKey('shrinkWrap')) ? arg['shrinkWrap'] : false,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/animated_size.dart
AnimatedSize _createAnimatedSizeWidget([arg]) {
    return new AnimatedSize(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null,
        /*@required*/ vsync: (arg is Map && arg.containsKey('vsync')) ? arg['vsync'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/animated_switcher.dart
AnimatedSwitcher _createAnimatedSwitcherWidget([arg]) {
    return new AnimatedSwitcher(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null,
        switchInCurve: (arg is Map && arg.containsKey('switchInCurve')) ? arg['switchInCurve'] : Curves.linear,
        switchOutCurve: (arg is Map && arg.containsKey('switchOutCurve')) ? arg['switchOutCurve'] : Curves.linear,
        transitionBuilder: (arg is Map && arg.containsKey('transitionBuilder')) ? arg['transitionBuilder'] : AnimatedSwitcher.defaultTransitionBuilder,
        layoutBuilder: (arg is Map && arg.containsKey('layoutBuilder')) ? arg['layoutBuilder'] : AnimatedSwitcher.defaultLayoutBuilder
    );
}


// flutter/packages/flutter/lib/src/widgets/app.dart
WidgetsApp _createWidgetsAppWidget([arg]) {
    return new WidgetsApp(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        navigatorKey: (arg is Map && arg.containsKey('navigatorKey')) ? arg['navigatorKey'] : null,
        onGenerateRoute: (arg is Map && arg.containsKey('onGenerateRoute')) ? arg['onGenerateRoute'] : null,
        onUnknownRoute: (arg is Map && arg.containsKey('onUnknownRoute')) ? arg['onUnknownRoute'] : null,
        navigatorObservers: (arg is Map && arg.containsKey('navigatorObservers')) ? arg['navigatorObservers'] : const <NavigatorObserver>[],
        initialRoute: (arg is Map && arg.containsKey('initialRoute')) ? arg['initialRoute'] : null,
        builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : '',
        onGenerateTitle: (arg is Map && arg.containsKey('onGenerateTitle')) ? arg['onGenerateTitle'] : null,
        textStyle: (arg is Map && arg.containsKey('textStyle')) ? arg['textStyle'] : null,
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        locale: (arg is Map && arg.containsKey('locale')) ? arg['locale'] : null,
        localizationsDelegates: (arg is Map && arg.containsKey('localizationsDelegates')) ? arg['localizationsDelegates'] : null,
        localeResolutionCallback: (arg is Map && arg.containsKey('localeResolutionCallback')) ? arg['localeResolutionCallback'] : null,
        supportedLocales: (arg is Map && arg.containsKey('supportedLocales')) ? arg['supportedLocales'] : const <Locale>[const Locale('en', 'US')],
        showPerformanceOverlay: (arg is Map && arg.containsKey('showPerformanceOverlay')) ? arg['showPerformanceOverlay'] : false,
        checkerboardRasterCacheImages: (arg is Map && arg.containsKey('checkerboardRasterCacheImages')) ? arg['checkerboardRasterCacheImages'] : false,
        checkerboardOffscreenLayers: (arg is Map && arg.containsKey('checkerboardOffscreenLayers')) ? arg['checkerboardOffscreenLayers'] : false,
        showSemanticsDebugger: (arg is Map && arg.containsKey('showSemanticsDebugger')) ? arg['showSemanticsDebugger'] : false,
        debugShowWidgetInspector: (arg is Map && arg.containsKey('debugShowWidgetInspector')) ? arg['debugShowWidgetInspector'] : false,
        debugShowCheckedModeBanner: (arg is Map && arg.containsKey('debugShowCheckedModeBanner')) ? arg['debugShowCheckedModeBanner'] : true,
        inspectorSelectButtonBuilder: (arg is Map && arg.containsKey('inspectorSelectButtonBuilder')) ? arg['inspectorSelectButtonBuilder'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/async.dart
StreamBuilder _createStreamBuilderWidget([arg]) {
    return new StreamBuilder(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        initialData: (arg is Map && arg.containsKey('initialData')) ? arg['initialData'] : null,
        stream: (arg is Map && arg.containsKey('stream')) ? arg['stream'] : null,
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/async.dart
FutureBuilder _createFutureBuilderWidget([arg]) {
    return new FutureBuilder(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        future: (arg is Map && arg.containsKey('future')) ? arg['future'] : null,
        initialData: (arg is Map && arg.containsKey('initialData')) ? arg['initialData'] : null,
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/automatic_keep_alive.dart
AutomaticKeepAlive _createAutomaticKeepAliveWidget([arg]) {
    return new AutomaticKeepAlive(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/banner.dart
BannerPainter _createBannerPainterWidget([arg]) {
    return new BannerPainter(
        /*@required*/ message: (arg is Map && arg.containsKey('message')) ? arg['message'] : null,
        /*@required*/ textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        /*@required*/ location: (arg is Map && arg.containsKey('location')) ? arg['location'] : null,
        /*@required*/ layoutDirection: (arg is Map && arg.containsKey('layoutDirection')) ? arg['layoutDirection'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : _kColor,
        textStyle: (arg is Map && arg.containsKey('textStyle')) ? arg['textStyle'] : _kTextStyle
    );
}


// flutter/packages/flutter/lib/src/widgets/banner.dart
Banner _createBannerWidget([arg]) {
    return new Banner(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ message: (arg is Map && arg.containsKey('message')) ? arg['message'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        /*@required*/ location: (arg is Map && arg.containsKey('location')) ? arg['location'] : null,
        layoutDirection: (arg is Map && arg.containsKey('layoutDirection')) ? arg['layoutDirection'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : _kColor,
        textStyle: (arg is Map && arg.containsKey('textStyle')) ? arg['textStyle'] : _kTextStyle
    );
}


// flutter/packages/flutter/lib/src/widgets/banner.dart
CheckedModeBanner _createCheckedModeBannerWidget([arg]) {
    return new CheckedModeBanner(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Directionality _createDirectionalityWidget([arg]) {
    return new Directionality(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Opacity _createOpacityWidget([arg]) {
    return new Opacity(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ opacity: (arg is Map && arg.containsKey('opacity')) ? arg['opacity'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
ShaderMask _createShaderMaskWidget([arg]) {
    return new ShaderMask(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ shaderCallback: (arg is Map && arg.containsKey('shaderCallback')) ? arg['shaderCallback'] : null,
        blendMode: (arg is Map && arg.containsKey('blendMode')) ? arg['blendMode'] : BlendMode.modulate,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
BackdropFilter _createBackdropFilterWidget([arg]) {
    return new BackdropFilter(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ filter: (arg is Map && arg.containsKey('filter')) ? arg['filter'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
CustomPaint _createCustomPaintWidget([arg]) {
    return new CustomPaint(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        painter: (arg is Map && arg.containsKey('painter')) ? arg['painter'] : null,
        foregroundPainter: (arg is Map && arg.containsKey('foregroundPainter')) ? arg['foregroundPainter'] : null,
        size: (arg is Map && arg.containsKey('size')) ? arg['size'] : Size.zero,
        isComplex: (arg is Map && arg.containsKey('isComplex')) ? arg['isComplex'] : false,
        willChange: (arg is Map && arg.containsKey('willChange')) ? arg['willChange'] : false,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
ClipRect _createClipRectWidget([arg]) {
    return new ClipRect(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        clipper: (arg is Map && arg.containsKey('clipper')) ? arg['clipper'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
ClipRRect _createClipRRectWidget([arg]) {
    return new ClipRRect(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : null,
        clipper: (arg is Map && arg.containsKey('clipper')) ? arg['clipper'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
ClipOval _createClipOvalWidget([arg]) {
    return new ClipOval(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        clipper: (arg is Map && arg.containsKey('clipper')) ? arg['clipper'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
ClipPath _createClipPathWidget([arg]) {
    return new ClipPath(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        clipper: (arg is Map && arg.containsKey('clipper')) ? arg['clipper'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
PhysicalModel _createPhysicalModelWidget([arg]) {
    return new PhysicalModel(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : BoxShape.rectangle,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 0.0,
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        shadowColor: (arg is Map && arg.containsKey('shadowColor')) ? arg['shadowColor'] : const Color(0xFF000000),
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
PhysicalShape _createPhysicalShapeWidget([arg]) {
    return new PhysicalShape(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ clipper: (arg is Map && arg.containsKey('clipper')) ? arg['clipper'] : null,
        elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : 0.0,
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        shadowColor: (arg is Map && arg.containsKey('shadowColor')) ? arg['shadowColor'] : const Color(0xFF000000),
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Transform _createTransformWidget([arg]) {
    return new Transform(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ transform: (arg is Map && arg.containsKey('transform')) ? arg['transform'] : null,
        origin: (arg is Map && arg.containsKey('origin')) ? arg['origin'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : null,
        transformHitTests: (arg is Map && arg.containsKey('transformHitTests')) ? arg['transformHitTests'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Transform _createTransform_rotateWidget([arg]) {
    return Transform.rotate(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ angle: (arg is Map && arg.containsKey('angle')) ? arg['angle'] : null,
        origin: (arg is Map && arg.containsKey('origin')) ? arg['origin'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        transformHitTests: (arg is Map && arg.containsKey('transformHitTests')) ? arg['transformHitTests'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
CompositedTransformTarget _createCompositedTransformTargetWidget([arg]) {
    return new CompositedTransformTarget(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ link: (arg is Map && arg.containsKey('link')) ? arg['link'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
CompositedTransformFollower _createCompositedTransformFollowerWidget([arg]) {
    return new CompositedTransformFollower(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ link: (arg is Map && arg.containsKey('link')) ? arg['link'] : null,
        showWhenUnlinked: (arg is Map && arg.containsKey('showWhenUnlinked')) ? arg['showWhenUnlinked'] : true,
        offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : Offset.zero,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
FittedBox _createFittedBoxWidget([arg]) {
    return new FittedBox(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : BoxFit.contain,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
FractionalTranslation _createFractionalTranslationWidget([arg]) {
    return new FractionalTranslation(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ translation: (arg is Map && arg.containsKey('translation')) ? arg['translation'] : null,
        transformHitTests: (arg is Map && arg.containsKey('transformHitTests')) ? arg['transformHitTests'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
RotatedBox _createRotatedBoxWidget([arg]) {
    return new RotatedBox(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ quarterTurns: (arg is Map && arg.containsKey('quarterTurns')) ? arg['quarterTurns'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Padding _createPaddingWidget([arg]) {
    return new Padding(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Align _createAlignWidget([arg]) {
    return new Align(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        widthFactor: (arg is Map && arg.containsKey('widthFactor')) ? arg['widthFactor'] : null,
        heightFactor: (arg is Map && arg.containsKey('heightFactor')) ? arg['heightFactor'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Center _createCenterWidget([arg]) {
    return new Center(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        widthFactor: (arg is Map && arg.containsKey('widthFactor')) ? arg['widthFactor'] : null,
        heightFactor: (arg is Map && arg.containsKey('heightFactor')) ? arg['heightFactor'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
CustomSingleChildLayout _createCustomSingleChildLayoutWidget([arg]) {
    return new CustomSingleChildLayout(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
LayoutId _createLayoutIdWidget([arg]) {
    return new LayoutId(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ id: (arg is Map && arg.containsKey('id')) ? arg['id'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
CustomMultiChildLayout _createCustomMultiChildLayoutWidget([arg]) {
    return new CustomMultiChildLayout(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
SizedBox _createSizedBoxWidget([arg]) {
    return new SizedBox(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
SizedBox _createSizedBox_expandWidget([arg]) {
    return SizedBox.expand(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
ConstrainedBox _createConstrainedBoxWidget([arg]) {
    return new ConstrainedBox(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ constraints: (arg is Map && arg.containsKey('constraints')) ? arg['constraints'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
UnconstrainedBox _createUnconstrainedBoxWidget([arg]) {
    return new UnconstrainedBox(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        constrainedAxis: (arg is Map && arg.containsKey('constrainedAxis')) ? arg['constrainedAxis'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
FractionallySizedBox _createFractionallySizedBoxWidget([arg]) {
    return new FractionallySizedBox(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        widthFactor: (arg is Map && arg.containsKey('widthFactor')) ? arg['widthFactor'] : null,
        heightFactor: (arg is Map && arg.containsKey('heightFactor')) ? arg['heightFactor'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
LimitedBox _createLimitedBoxWidget([arg]) {
    return new LimitedBox(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        maxWidth: (arg is Map && arg.containsKey('maxWidth')) ? arg['maxWidth'] : double.infinity,
        maxHeight: (arg is Map && arg.containsKey('maxHeight')) ? arg['maxHeight'] : double.infinity,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
OverflowBox _createOverflowBoxWidget([arg]) {
    return new OverflowBox(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        minWidth: (arg is Map && arg.containsKey('minWidth')) ? arg['minWidth'] : null,
        maxWidth: (arg is Map && arg.containsKey('maxWidth')) ? arg['maxWidth'] : null,
        minHeight: (arg is Map && arg.containsKey('minHeight')) ? arg['minHeight'] : null,
        maxHeight: (arg is Map && arg.containsKey('maxHeight')) ? arg['maxHeight'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
SizedOverflowBox _createSizedOverflowBoxWidget([arg]) {
    return new SizedOverflowBox(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ size: (arg is Map && arg.containsKey('size')) ? arg['size'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Offstage _createOffstageWidget([arg]) {
    return new Offstage(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        offstage: (arg is Map && arg.containsKey('offstage')) ? arg['offstage'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
AspectRatio _createAspectRatioWidget([arg]) {
    return new AspectRatio(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ aspectRatio: (arg is Map && arg.containsKey('aspectRatio')) ? arg['aspectRatio'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
IntrinsicWidth _createIntrinsicWidthWidget([arg]) {
    return new IntrinsicWidth(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        stepWidth: (arg is Map && arg.containsKey('stepWidth')) ? arg['stepWidth'] : null,
        stepHeight: (arg is Map && arg.containsKey('stepHeight')) ? arg['stepHeight'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
IntrinsicHeight _createIntrinsicHeightWidget([arg]) {
    return new IntrinsicHeight(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Baseline _createBaselineWidget([arg]) {
    return new Baseline(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ baseline: (arg is Map && arg.containsKey('baseline')) ? arg['baseline'] : null,
        /*@required*/ baselineType: (arg is Map && arg.containsKey('baselineType')) ? arg['baselineType'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
SliverToBoxAdapter _createSliverToBoxAdapterWidget([arg]) {
    return new SliverToBoxAdapter(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
SliverPadding _createSliverPaddingWidget([arg]) {
    return new SliverPadding(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        sliver: (arg is Map && arg.containsKey('sliver')) ? arg['sliver'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
ListBody _createListBodyWidget([arg]) {
    return new ListBody(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        mainAxis: (arg is Map && arg.containsKey('mainAxis')) ? arg['mainAxis'] : Axis.vertical,
        reverse: (arg is Map && arg.containsKey('reverse')) ? arg['reverse'] : false,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Stack _createStackWidget([arg]) {
    return new Stack(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : AlignmentDirectional.topStart,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : StackFit.loose,
        overflow: (arg is Map && arg.containsKey('overflow')) ? arg['overflow'] : Overflow.clip,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
IndexedStack _createIndexedStackWidget([arg]) {
    return new IndexedStack(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : AlignmentDirectional.topStart,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        sizing: (arg is Map && arg.containsKey('sizing')) ? arg['sizing'] : StackFit.loose,
        index: (arg is Map && arg.containsKey('index')) ? arg['index'] : 0,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Positioned _createPositionedWidget([arg]) {
    return new Positioned(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        left: (arg is Map && arg.containsKey('left')) ? arg['left'] : null,
        top: (arg is Map && arg.containsKey('top')) ? arg['top'] : null,
        right: (arg is Map && arg.containsKey('right')) ? arg['right'] : null,
        bottom: (arg is Map && arg.containsKey('bottom')) ? arg['bottom'] : null,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Positioned _createPositioned_fromRectWidget([arg]) {
    return Positioned.fromRect(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        rect: (arg is Map && arg.containsKey('rect')) ? arg['rect'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
PositionedDirectional _createPositionedDirectionalWidget([arg]) {
    return new PositionedDirectional(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        start: (arg is Map && arg.containsKey('start')) ? arg['start'] : null,
        top: (arg is Map && arg.containsKey('top')) ? arg['top'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null,
        bottom: (arg is Map && arg.containsKey('bottom')) ? arg['bottom'] : null,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Flex _createFlexWidget([arg]) {
    return new Flex(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ direction: (arg is Map && arg.containsKey('direction')) ? arg['direction'] : null,
        mainAxisAlignment: (arg is Map && arg.containsKey('mainAxisAlignment')) ? arg['mainAxisAlignment'] : MainAxisAlignment.start,
        mainAxisSize: (arg is Map && arg.containsKey('mainAxisSize')) ? arg['mainAxisSize'] : MainAxisSize.max,
        crossAxisAlignment: (arg is Map && arg.containsKey('crossAxisAlignment')) ? arg['crossAxisAlignment'] : CrossAxisAlignment.center,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        verticalDirection: (arg is Map && arg.containsKey('verticalDirection')) ? arg['verticalDirection'] : VerticalDirection.down,
        textBaseline: (arg is Map && arg.containsKey('textBaseline')) ? arg['textBaseline'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Row _createRowWidget([arg]) {
    return new Row(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        mainAxisAlignment: (arg is Map && arg.containsKey('mainAxisAlignment')) ? arg['mainAxisAlignment'] : MainAxisAlignment.start,
        mainAxisSize: (arg is Map && arg.containsKey('mainAxisSize')) ? arg['mainAxisSize'] : MainAxisSize.max,
        crossAxisAlignment: (arg is Map && arg.containsKey('crossAxisAlignment')) ? arg['crossAxisAlignment'] : CrossAxisAlignment.center,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        verticalDirection: (arg is Map && arg.containsKey('verticalDirection')) ? arg['verticalDirection'] : VerticalDirection.down,
        textBaseline: (arg is Map && arg.containsKey('textBaseline')) ? arg['textBaseline'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Column _createColumnWidget([arg]) {
    return new Column(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        mainAxisAlignment: (arg is Map && arg.containsKey('mainAxisAlignment')) ? arg['mainAxisAlignment'] : MainAxisAlignment.start,
        mainAxisSize: (arg is Map && arg.containsKey('mainAxisSize')) ? arg['mainAxisSize'] : MainAxisSize.max,
        crossAxisAlignment: (arg is Map && arg.containsKey('crossAxisAlignment')) ? arg['crossAxisAlignment'] : CrossAxisAlignment.center,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        verticalDirection: (arg is Map && arg.containsKey('verticalDirection')) ? arg['verticalDirection'] : VerticalDirection.down,
        textBaseline: (arg is Map && arg.containsKey('textBaseline')) ? arg['textBaseline'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Flexible _createFlexibleWidget([arg]) {
    return new Flexible(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        flex: (arg is Map && arg.containsKey('flex')) ? arg['flex'] : 1,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : FlexFit.loose,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Expanded _createExpandedWidget([arg]) {
    return new Expanded(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        flex: (arg is Map && arg.containsKey('flex')) ? arg['flex'] : 1,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Wrap _createWrapWidget([arg]) {
    return new Wrap(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        direction: (arg is Map && arg.containsKey('direction')) ? arg['direction'] : Axis.horizontal,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : WrapAlignment.start,
        spacing: (arg is Map && arg.containsKey('spacing')) ? arg['spacing'] : 0.0,
        runAlignment: (arg is Map && arg.containsKey('runAlignment')) ? arg['runAlignment'] : WrapAlignment.start,
        runSpacing: (arg is Map && arg.containsKey('runSpacing')) ? arg['runSpacing'] : 0.0,
        crossAxisAlignment: (arg is Map && arg.containsKey('crossAxisAlignment')) ? arg['crossAxisAlignment'] : WrapCrossAlignment.start,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        verticalDirection: (arg is Map && arg.containsKey('verticalDirection')) ? arg['verticalDirection'] : VerticalDirection.down,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Flow _createFlowWidget([arg]) {
    return new Flow(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Flow _createFlow_unwrappedWidget([arg]) {
    return Flow.unwrapped(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
RichText _createRichTextWidget([arg]) {
    return new RichText(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ text: (arg is Map && arg.containsKey('text')) ? arg['text'] : null,
        textAlign: (arg is Map && arg.containsKey('textAlign')) ? arg['textAlign'] : TextAlign.start,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        softWrap: (arg is Map && arg.containsKey('softWrap')) ? arg['softWrap'] : true,
        overflow: (arg is Map && arg.containsKey('overflow')) ? arg['overflow'] : TextOverflow.clip,
        textScaleFactor: (arg is Map && arg.containsKey('textScaleFactor')) ? arg['textScaleFactor'] : 1.0,
        maxLines: (arg is Map && arg.containsKey('maxLines')) ? arg['maxLines'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
RawImage _createRawImageWidget([arg]) {
    return new RawImage(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        image: (arg is Map && arg.containsKey('image')) ? arg['image'] : null,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : 1.0,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        colorBlendMode: (arg is Map && arg.containsKey('colorBlendMode')) ? arg['colorBlendMode'] : null,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        repeat: (arg is Map && arg.containsKey('repeat')) ? arg['repeat'] : ImageRepeat.noRepeat,
        centerSlice: (arg is Map && arg.containsKey('centerSlice')) ? arg['centerSlice'] : null,
        matchTextDirection: (arg is Map && arg.containsKey('matchTextDirection')) ? arg['matchTextDirection'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
DefaultAssetBundle _createDefaultAssetBundleWidget([arg]) {
    return new DefaultAssetBundle(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ bundle: (arg is Map && arg.containsKey('bundle')) ? arg['bundle'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
WidgetToRenderBoxAdapter _createWidgetToRenderBoxAdapterWidget([arg]) {
    return new WidgetToRenderBoxAdapter(
        /*@required*/ renderBox: (arg is Map && arg.containsKey('renderBox')) ? arg['renderBox'] : null,
        onBuild: (arg is Map && arg.containsKey('onBuild')) ? arg['onBuild'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Listener _createListenerWidget([arg]) {
    return new Listener(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        onPointerDown: (arg is Map && arg.containsKey('onPointerDown')) ? arg['onPointerDown'] : null,
        onPointerMove: (arg is Map && arg.containsKey('onPointerMove')) ? arg['onPointerMove'] : null,
        onPointerUp: (arg is Map && arg.containsKey('onPointerUp')) ? arg['onPointerUp'] : null,
        onPointerCancel: (arg is Map && arg.containsKey('onPointerCancel')) ? arg['onPointerCancel'] : null,
        behavior: (arg is Map && arg.containsKey('behavior')) ? arg['behavior'] : HitTestBehavior.deferToChild,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
RepaintBoundary _createRepaintBoundaryWidget([arg]) {
    return new RepaintBoundary(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
IgnorePointer _createIgnorePointerWidget([arg]) {
    return new IgnorePointer(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        ignoring: (arg is Map && arg.containsKey('ignoring')) ? arg['ignoring'] : true,
        ignoringSemantics: (arg is Map && arg.containsKey('ignoringSemantics')) ? arg['ignoringSemantics'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
AbsorbPointer _createAbsorbPointerWidget([arg]) {
    return new AbsorbPointer(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        absorbing: (arg is Map && arg.containsKey('absorbing')) ? arg['absorbing'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
MetaData _createMetaDataWidget([arg]) {
    return new MetaData(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        metaData: (arg is Map && arg.containsKey('metaData')) ? arg['metaData'] : null,
        behavior: (arg is Map && arg.containsKey('behavior')) ? arg['behavior'] : HitTestBehavior.deferToChild,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Semantics _createSemanticsWidget([arg]) {
    return new Semantics(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        container: (arg is Map && arg.containsKey('container')) ? arg['container'] : false,
        explicitChildNodes: (arg is Map && arg.containsKey('explicitChildNodes')) ? arg['explicitChildNodes'] : false,
        enabled: (arg is Map && arg.containsKey('enabled')) ? arg['enabled'] : null,
        checked: (arg is Map && arg.containsKey('checked')) ? arg['checked'] : null,
        selected: (arg is Map && arg.containsKey('selected')) ? arg['selected'] : null,
        button: (arg is Map && arg.containsKey('button')) ? arg['button'] : null,
        header: (arg is Map && arg.containsKey('header')) ? arg['header'] : null,
        textField: (arg is Map && arg.containsKey('textField')) ? arg['textField'] : null,
        focused: (arg is Map && arg.containsKey('focused')) ? arg['focused'] : null,
        inMutuallyExclusiveGroup: (arg is Map && arg.containsKey('inMutuallyExclusiveGroup')) ? arg['inMutuallyExclusiveGroup'] : null,
        obscured: (arg is Map && arg.containsKey('obscured')) ? arg['obscured'] : null,
        scopesRoute: (arg is Map && arg.containsKey('scopesRoute')) ? arg['scopesRoute'] : null,
        namesRoute: (arg is Map && arg.containsKey('namesRoute')) ? arg['namesRoute'] : null,
        hidden: (arg is Map && arg.containsKey('hidden')) ? arg['hidden'] : null,
        label: (arg is Map && arg.containsKey('label')) ? arg['label'] : null,
        value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        increasedValue: (arg is Map && arg.containsKey('increasedValue')) ? arg['increasedValue'] : null,
        decreasedValue: (arg is Map && arg.containsKey('decreasedValue')) ? arg['decreasedValue'] : null,
        hint: (arg is Map && arg.containsKey('hint')) ? arg['hint'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        sortKey: (arg is Map && arg.containsKey('sortKey')) ? arg['sortKey'] : null,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null,
        onLongPress: (arg is Map && arg.containsKey('onLongPress')) ? arg['onLongPress'] : null,
        onScrollLeft: (arg is Map && arg.containsKey('onScrollLeft')) ? arg['onScrollLeft'] : null,
        onScrollRight: (arg is Map && arg.containsKey('onScrollRight')) ? arg['onScrollRight'] : null,
        onScrollUp: (arg is Map && arg.containsKey('onScrollUp')) ? arg['onScrollUp'] : null,
        onScrollDown: (arg is Map && arg.containsKey('onScrollDown')) ? arg['onScrollDown'] : null,
        onIncrease: (arg is Map && arg.containsKey('onIncrease')) ? arg['onIncrease'] : null,
        onDecrease: (arg is Map && arg.containsKey('onDecrease')) ? arg['onDecrease'] : null,
        onCopy: (arg is Map && arg.containsKey('onCopy')) ? arg['onCopy'] : null,
        onCut: (arg is Map && arg.containsKey('onCut')) ? arg['onCut'] : null,
        onPaste: (arg is Map && arg.containsKey('onPaste')) ? arg['onPaste'] : null,
        onMoveCursorForwardByCharacter: (arg is Map && arg.containsKey('onMoveCursorForwardByCharacter')) ? arg['onMoveCursorForwardByCharacter'] : null,
        onMoveCursorBackwardByCharacter: (arg is Map && arg.containsKey('onMoveCursorBackwardByCharacter')) ? arg['onMoveCursorBackwardByCharacter'] : null,
        onSetSelection: (arg is Map && arg.containsKey('onSetSelection')) ? arg['onSetSelection'] : null,
        onDidGainAccessibilityFocus: (arg is Map && arg.containsKey('onDidGainAccessibilityFocus')) ? arg['onDidGainAccessibilityFocus'] : null,
        onDidLoseAccessibilityFocus: (arg is Map && arg.containsKey('onDidLoseAccessibilityFocus')) ? arg['onDidLoseAccessibilityFocus'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Semantics _createSemantics_fromPropertiesWidget([arg]) {
    return Semantics.fromProperties(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        container: (arg is Map && arg.containsKey('container')) ? arg['container'] : false,
        explicitChildNodes: (arg is Map && arg.containsKey('explicitChildNodes')) ? arg['explicitChildNodes'] : false,
        /*@required*/ properties: (arg is Map && arg.containsKey('properties')) ? arg['properties'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
MergeSemantics _createMergeSemanticsWidget([arg]) {
    return new MergeSemantics(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
BlockSemantics _createBlockSemanticsWidget([arg]) {
    return new BlockSemantics(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        blocking: (arg is Map && arg.containsKey('blocking')) ? arg['blocking'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
ExcludeSemantics _createExcludeSemanticsWidget([arg]) {
    return new ExcludeSemantics(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        excluding: (arg is Map && arg.containsKey('excluding')) ? arg['excluding'] : true,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
KeyedSubtree _createKeyedSubtreeWidget([arg]) {
    return new KeyedSubtree(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
Builder _createBuilderWidget([arg]) {
    return new Builder(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/basic.dart
StatefulBuilder _createStatefulBuilderWidget([arg]) {
    return new StatefulBuilder(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/binding.dart
RenderObjectToWidgetAdapter _createRenderObjectToWidgetAdapterWidget([arg]) {
    return new RenderObjectToWidgetAdapter(
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        container: (arg is Map && arg.containsKey('container')) ? arg['container'] : null,
        debugShortDescription: (arg is Map && arg.containsKey('debugShortDescription')) ? arg['debugShortDescription'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/bottom_navigation_bar_item.dart
BottomNavigationBarItem _createBottomNavigationBarItemWidget([arg]) {
    return new BottomNavigationBarItem(
        /*@required*/ icon: (arg is Map && arg.containsKey('icon')) ? arg['icon'] : null,
        /*@required*/ title: (arg is Map && arg.containsKey('title')) ? arg['title'] : null,
        backgroundColor: (arg is Map && arg.containsKey('backgroundColor')) ? arg['backgroundColor'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/container.dart
DecoratedBox _createDecoratedBoxWidget([arg]) {
    return new DecoratedBox(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        position: (arg is Map && arg.containsKey('position')) ? arg['position'] : DecorationPosition.background,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/container.dart
Container _createContainerWidget([arg]) {
    return new Container(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        foregroundDecoration: (arg is Map && arg.containsKey('foregroundDecoration')) ? arg['foregroundDecoration'] : null,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        constraints: (arg is Map && arg.containsKey('constraints')) ? arg['constraints'] : null,
        margin: (arg is Map && arg.containsKey('margin')) ? arg['margin'] : null,
        transform: (arg is Map && arg.containsKey('transform')) ? arg['transform'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/dismissible.dart
Dismissible _createDismissibleWidget([arg]) {
    return new Dismissible(
        /*@required*/ key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        background: (arg is Map && arg.containsKey('background')) ? arg['background'] : null,
        secondaryBackground: (arg is Map && arg.containsKey('secondaryBackground')) ? arg['secondaryBackground'] : null,
        onResize: (arg is Map && arg.containsKey('onResize')) ? arg['onResize'] : null,
        onDismissed: (arg is Map && arg.containsKey('onDismissed')) ? arg['onDismissed'] : null,
        direction: (arg is Map && arg.containsKey('direction')) ? arg['direction'] : DismissDirection.horizontal,
        resizeDuration: (arg is Map && arg.containsKey('resizeDuration')) ? arg['resizeDuration'] : const Duration(milliseconds : 300),
        dismissThresholds: (arg is Map && arg.containsKey('dismissThresholds')) ? arg['dismissThresholds'] : const <DismissDirection , double>{},
        movementDuration: (arg is Map && arg.containsKey('movementDuration')) ? arg['movementDuration'] : const Duration(milliseconds : 200),
        crossAxisEndOffset: (arg is Map && arg.containsKey('crossAxisEndOffset')) ? arg['crossAxisEndOffset'] : 0.0
    );
}


// flutter/packages/flutter/lib/src/widgets/drag_target.dart
Draggable _createDraggableWidget([arg]) {
    return new Draggable(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ feedback: (arg is Map && arg.containsKey('feedback')) ? arg['feedback'] : null,
        data: (arg is Map && arg.containsKey('data')) ? arg['data'] : null,
        axis: (arg is Map && arg.containsKey('axis')) ? arg['axis'] : null,
        childWhenDragging: (arg is Map && arg.containsKey('childWhenDragging')) ? arg['childWhenDragging'] : null,
        feedbackOffset: (arg is Map && arg.containsKey('feedbackOffset')) ? arg['feedbackOffset'] : Offset.zero,
        dragAnchor: (arg is Map && arg.containsKey('dragAnchor')) ? arg['dragAnchor'] : DragAnchor.child,
        affinity: (arg is Map && arg.containsKey('affinity')) ? arg['affinity'] : null,
        maxSimultaneousDrags: (arg is Map && arg.containsKey('maxSimultaneousDrags')) ? arg['maxSimultaneousDrags'] : null,
        onDragStarted: (arg is Map && arg.containsKey('onDragStarted')) ? arg['onDragStarted'] : null,
        onDraggableCanceled: (arg is Map && arg.containsKey('onDraggableCanceled')) ? arg['onDraggableCanceled'] : null,
        onDragCompleted: (arg is Map && arg.containsKey('onDragCompleted')) ? arg['onDragCompleted'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/drag_target.dart
LongPressDraggable _createLongPressDraggableWidget([arg]) {
    return new LongPressDraggable(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ feedback: (arg is Map && arg.containsKey('feedback')) ? arg['feedback'] : null,
        data: (arg is Map && arg.containsKey('data')) ? arg['data'] : null,
        axis: (arg is Map && arg.containsKey('axis')) ? arg['axis'] : null,
        childWhenDragging: (arg is Map && arg.containsKey('childWhenDragging')) ? arg['childWhenDragging'] : null,
        feedbackOffset: (arg is Map && arg.containsKey('feedbackOffset')) ? arg['feedbackOffset'] : Offset.zero,
        dragAnchor: (arg is Map && arg.containsKey('dragAnchor')) ? arg['dragAnchor'] : DragAnchor.child,
        maxSimultaneousDrags: (arg is Map && arg.containsKey('maxSimultaneousDrags')) ? arg['maxSimultaneousDrags'] : null,
        onDragStarted: (arg is Map && arg.containsKey('onDragStarted')) ? arg['onDragStarted'] : null,
        onDraggableCanceled: (arg is Map && arg.containsKey('onDraggableCanceled')) ? arg['onDraggableCanceled'] : null,
        onDragCompleted: (arg is Map && arg.containsKey('onDragCompleted')) ? arg['onDragCompleted'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/drag_target.dart
DragTarget _createDragTargetWidget([arg]) {
    return new DragTarget(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null,
        onWillAccept: (arg is Map && arg.containsKey('onWillAccept')) ? arg['onWillAccept'] : null,
        onAccept: (arg is Map && arg.containsKey('onAccept')) ? arg['onAccept'] : null,
        onLeave: (arg is Map && arg.containsKey('onLeave')) ? arg['onLeave'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/editable_text.dart
TextEditingController _createTextEditingControllerWidget([arg]) {
    return new TextEditingController(
        text: (arg is Map && arg.containsKey('text')) ? arg['text'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/editable_text.dart
EditableText _createEditableTextWidget([arg]) {
    return new EditableText(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        /*@required*/ focusNode: (arg is Map && arg.containsKey('focusNode')) ? arg['focusNode'] : null,
        obscureText: (arg is Map && arg.containsKey('obscureText')) ? arg['obscureText'] : false,
        autocorrect: (arg is Map && arg.containsKey('autocorrect')) ? arg['autocorrect'] : true,
        /*@required*/ style: (arg is Map && arg.containsKey('style')) ? arg['style'] : null,
        /*@required*/ cursorColor: (arg is Map && arg.containsKey('cursorColor')) ? arg['cursorColor'] : null,
        textAlign: (arg is Map && arg.containsKey('textAlign')) ? arg['textAlign'] : TextAlign.start,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        textScaleFactor: (arg is Map && arg.containsKey('textScaleFactor')) ? arg['textScaleFactor'] : null,
        maxLines: (arg is Map && arg.containsKey('maxLines')) ? arg['maxLines'] : 1,
        autofocus: (arg is Map && arg.containsKey('autofocus')) ? arg['autofocus'] : false,
        selectionColor: (arg is Map && arg.containsKey('selectionColor')) ? arg['selectionColor'] : null,
        selectionControls: (arg is Map && arg.containsKey('selectionControls')) ? arg['selectionControls'] : null,
        keyboardType: (arg is Map && arg.containsKey('keyboardType')) ? arg['keyboardType'] : null,
        onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null,
        onSubmitted: (arg is Map && arg.containsKey('onSubmitted')) ? arg['onSubmitted'] : null,
        onSelectionChanged: (arg is Map && arg.containsKey('onSelectionChanged')) ? arg['onSelectionChanged'] : null,
        inputFormatters: (arg is Map && arg.containsKey('inputFormatters')) ? arg['inputFormatters'] : null,
        rendererIgnoresPointer: (arg is Map && arg.containsKey('rendererIgnoresPointer')) ? arg['rendererIgnoresPointer'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/fade_in_image.dart
FadeInImage _createFadeInImageWidget([arg]) {
    return new FadeInImage(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ placeholder: (arg is Map && arg.containsKey('placeholder')) ? arg['placeholder'] : null,
        /*@required*/ image: (arg is Map && arg.containsKey('image')) ? arg['image'] : null,
        fadeOutDuration: (arg is Map && arg.containsKey('fadeOutDuration')) ? arg['fadeOutDuration'] : const Duration(milliseconds : 300),
        fadeOutCurve: (arg is Map && arg.containsKey('fadeOutCurve')) ? arg['fadeOutCurve'] : Curves.easeOut,
        fadeInDuration: (arg is Map && arg.containsKey('fadeInDuration')) ? arg['fadeInDuration'] : const Duration(milliseconds : 700),
        fadeInCurve: (arg is Map && arg.containsKey('fadeInCurve')) ? arg['fadeInCurve'] : Curves.easeIn,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        repeat: (arg is Map && arg.containsKey('repeat')) ? arg['repeat'] : ImageRepeat.noRepeat,
        matchTextDirection: (arg is Map && arg.containsKey('matchTextDirection')) ? arg['matchTextDirection'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/fade_in_image.dart
FadeInImage _createFadeInImage_memoryNetworkWidget([arg]) {
    return FadeInImage.memoryNetwork(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ placeholder: (arg is Map && arg.containsKey('placeholder')) ? arg['placeholder'] : null,
        /*@required*/ image: (arg is Map && arg.containsKey('image')) ? arg['image'] : null,
        placeholderScale: (arg is Map && arg.containsKey('placeholderScale')) ? arg['placeholderScale'] : 1.0,
        imageScale: (arg is Map && arg.containsKey('imageScale')) ? arg['imageScale'] : 1.0,
        fadeOutDuration: (arg is Map && arg.containsKey('fadeOutDuration')) ? arg['fadeOutDuration'] : const Duration(milliseconds : 300),
        fadeOutCurve: (arg is Map && arg.containsKey('fadeOutCurve')) ? arg['fadeOutCurve'] : Curves.easeOut,
        fadeInDuration: (arg is Map && arg.containsKey('fadeInDuration')) ? arg['fadeInDuration'] : const Duration(milliseconds : 700),
        fadeInCurve: (arg is Map && arg.containsKey('fadeInCurve')) ? arg['fadeInCurve'] : Curves.easeIn,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        repeat: (arg is Map && arg.containsKey('repeat')) ? arg['repeat'] : ImageRepeat.noRepeat,
        matchTextDirection: (arg is Map && arg.containsKey('matchTextDirection')) ? arg['matchTextDirection'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/focus_scope.dart
FocusScope _createFocusScopeWidget([arg]) {
    return new FocusScope(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ node: (arg is Map && arg.containsKey('node')) ? arg['node'] : null,
        autofocus: (arg is Map && arg.containsKey('autofocus')) ? arg['autofocus'] : false,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/form.dart
Form _createFormWidget([arg]) {
    return new Form(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        autovalidate: (arg is Map && arg.containsKey('autovalidate')) ? arg['autovalidate'] : false,
        onWillPop: (arg is Map && arg.containsKey('onWillPop')) ? arg['onWillPop'] : null,
        onChanged: (arg is Map && arg.containsKey('onChanged')) ? arg['onChanged'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/form.dart
FormField _createFormFieldWidget([arg]) {
    return new FormField(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null,
        onSaved: (arg is Map && arg.containsKey('onSaved')) ? arg['onSaved'] : null,
        validator: (arg is Map && arg.containsKey('validator')) ? arg['validator'] : null,
        initialValue: (arg is Map && arg.containsKey('initialValue')) ? arg['initialValue'] : null,
        autovalidate: (arg is Map && arg.containsKey('autovalidate')) ? arg['autovalidate'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/framework.dart
BuildOwner _createBuildOwnerWidget([arg]) {
    return new BuildOwner(
        onBuildScheduled: (arg is Map && arg.containsKey('onBuildScheduled')) ? arg['onBuildScheduled'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/gesture_detector.dart
GestureDetector _createGestureDetectorWidget([arg]) {
    return new GestureDetector(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        onTapDown: (arg is Map && arg.containsKey('onTapDown')) ? arg['onTapDown'] : null,
        onTapUp: (arg is Map && arg.containsKey('onTapUp')) ? arg['onTapUp'] : null,
        onTap: (arg is Map && arg.containsKey('onTap')) ? arg['onTap'] : null,
        onTapCancel: (arg is Map && arg.containsKey('onTapCancel')) ? arg['onTapCancel'] : null,
        onDoubleTap: (arg is Map && arg.containsKey('onDoubleTap')) ? arg['onDoubleTap'] : null,
        onLongPress: (arg is Map && arg.containsKey('onLongPress')) ? arg['onLongPress'] : null,
        onVerticalDragDown: (arg is Map && arg.containsKey('onVerticalDragDown')) ? arg['onVerticalDragDown'] : null,
        onVerticalDragStart: (arg is Map && arg.containsKey('onVerticalDragStart')) ? arg['onVerticalDragStart'] : null,
        onVerticalDragUpdate: (arg is Map && arg.containsKey('onVerticalDragUpdate')) ? arg['onVerticalDragUpdate'] : null,
        onVerticalDragEnd: (arg is Map && arg.containsKey('onVerticalDragEnd')) ? arg['onVerticalDragEnd'] : null,
        onVerticalDragCancel: (arg is Map && arg.containsKey('onVerticalDragCancel')) ? arg['onVerticalDragCancel'] : null,
        onHorizontalDragDown: (arg is Map && arg.containsKey('onHorizontalDragDown')) ? arg['onHorizontalDragDown'] : null,
        onHorizontalDragStart: (arg is Map && arg.containsKey('onHorizontalDragStart')) ? arg['onHorizontalDragStart'] : null,
        onHorizontalDragUpdate: (arg is Map && arg.containsKey('onHorizontalDragUpdate')) ? arg['onHorizontalDragUpdate'] : null,
        onHorizontalDragEnd: (arg is Map && arg.containsKey('onHorizontalDragEnd')) ? arg['onHorizontalDragEnd'] : null,
        onHorizontalDragCancel: (arg is Map && arg.containsKey('onHorizontalDragCancel')) ? arg['onHorizontalDragCancel'] : null,
        onPanDown: (arg is Map && arg.containsKey('onPanDown')) ? arg['onPanDown'] : null,
        onPanStart: (arg is Map && arg.containsKey('onPanStart')) ? arg['onPanStart'] : null,
        onPanUpdate: (arg is Map && arg.containsKey('onPanUpdate')) ? arg['onPanUpdate'] : null,
        onPanEnd: (arg is Map && arg.containsKey('onPanEnd')) ? arg['onPanEnd'] : null,
        onPanCancel: (arg is Map && arg.containsKey('onPanCancel')) ? arg['onPanCancel'] : null,
        onScaleStart: (arg is Map && arg.containsKey('onScaleStart')) ? arg['onScaleStart'] : null,
        onScaleUpdate: (arg is Map && arg.containsKey('onScaleUpdate')) ? arg['onScaleUpdate'] : null,
        onScaleEnd: (arg is Map && arg.containsKey('onScaleEnd')) ? arg['onScaleEnd'] : null,
        behavior: (arg is Map && arg.containsKey('behavior')) ? arg['behavior'] : null,
        excludeFromSemantics: (arg is Map && arg.containsKey('excludeFromSemantics')) ? arg['excludeFromSemantics'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/gesture_detector.dart
RawGestureDetector _createRawGestureDetectorWidget([arg]) {
    return new RawGestureDetector(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        gestures: (arg is Map && arg.containsKey('gestures')) ? arg['gestures'] : const <Type , GestureRecognizerFactory>{},
        behavior: (arg is Map && arg.containsKey('behavior')) ? arg['behavior'] : null,
        excludeFromSemantics: (arg is Map && arg.containsKey('excludeFromSemantics')) ? arg['excludeFromSemantics'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/grid_paper.dart
GridPaper _createGridPaperWidget([arg]) {
    return new GridPaper(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : const Color(0x7FC3E8F3),
        interval: (arg is Map && arg.containsKey('interval')) ? arg['interval'] : 100.0,
        divisions: (arg is Map && arg.containsKey('divisions')) ? arg['divisions'] : 2,
        subdivisions: (arg is Map && arg.containsKey('subdivisions')) ? arg['subdivisions'] : 5,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/heroes.dart
Hero _createHeroWidget([arg]) {
    return new Hero(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ tag: (arg is Map && arg.containsKey('tag')) ? arg['tag'] : null,
        createRectTween: (arg is Map && arg.containsKey('createRectTween')) ? arg['createRectTween'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/heroes.dart
HeroController _createHeroControllerWidget([arg]) {
    return new HeroController(
        createRectTween: (arg is Map && arg.containsKey('createRectTween')) ? arg['createRectTween'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/icon_data.dart
IconData _createIconDataWidget(data, [arg]) {
    return new IconData(
        data,
        fontFamily: (arg is Map && arg.containsKey('fontFamily')) ? arg['fontFamily'] : null,
        fontPackage: (arg is Map && arg.containsKey('fontPackage')) ? arg['fontPackage'] : null,
        matchTextDirection: (arg is Map && arg.containsKey('matchTextDirection')) ? arg['matchTextDirection'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/icon_theme_data.dart
IconThemeData _createIconThemeDataWidget([arg]) {
    return new IconThemeData(
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        opacity: (arg is Map && arg.containsKey('opacity')) ? arg['opacity'] : null,
        size: (arg is Map && arg.containsKey('size')) ? arg['size'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/icon_theme.dart
IconTheme _createIconThemeWidget([arg]) {
    return new IconTheme(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ data: (arg is Map && arg.containsKey('data')) ? arg['data'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/icon.dart
Icon _createIconWidget(data, [arg]) {
    return new Icon(
        data,
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        size: (arg is Map && arg.containsKey('size')) ? arg['size'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        semanticLabel: (arg is Map && arg.containsKey('semanticLabel')) ? arg['semanticLabel'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/image_icon.dart
ImageIcon _createImageIconWidget(data, [arg]) {
    return new ImageIcon(
        data,
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        size: (arg is Map && arg.containsKey('size')) ? arg['size'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/image.dart
Image _createImageWidget([arg]) {
    return new Image(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ image: (arg is Map && arg.containsKey('image')) ? arg['image'] : null,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        colorBlendMode: (arg is Map && arg.containsKey('colorBlendMode')) ? arg['colorBlendMode'] : null,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        repeat: (arg is Map && arg.containsKey('repeat')) ? arg['repeat'] : ImageRepeat.noRepeat,
        centerSlice: (arg is Map && arg.containsKey('centerSlice')) ? arg['centerSlice'] : null,
        matchTextDirection: (arg is Map && arg.containsKey('matchTextDirection')) ? arg['matchTextDirection'] : false,
        gaplessPlayback: (arg is Map && arg.containsKey('gaplessPlayback')) ? arg['gaplessPlayback'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/image.dart
Image _createImage_networkWidget(data, [arg]) {
    return Image.network(
        data,
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : 1.0,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        colorBlendMode: (arg is Map && arg.containsKey('colorBlendMode')) ? arg['colorBlendMode'] : null,
        fit: (arg is Map && arg.containsKey('fit')) ? arg['fit'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        repeat: (arg is Map && arg.containsKey('repeat')) ? arg['repeat'] : ImageRepeat.noRepeat,
        centerSlice: (arg is Map && arg.containsKey('centerSlice')) ? arg['centerSlice'] : null,
        matchTextDirection: (arg is Map && arg.containsKey('matchTextDirection')) ? arg['matchTextDirection'] : false,
        gaplessPlayback: (arg is Map && arg.containsKey('gaplessPlayback')) ? arg['gaplessPlayback'] : false,
        headers: (arg is Map && arg.containsKey('headers')) ? arg['headers'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
BoxConstraintsTween _createBoxConstraintsTweenWidget([arg]) {
    return new BoxConstraintsTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
DecorationTween _createDecorationTweenWidget([arg]) {
    return new DecorationTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
EdgeInsetsTween _createEdgeInsetsTweenWidget([arg]) {
    return new EdgeInsetsTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
EdgeInsetsGeometryTween _createEdgeInsetsGeometryTweenWidget([arg]) {
    return new EdgeInsetsGeometryTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
BorderRadiusTween _createBorderRadiusTweenWidget([arg]) {
    return new BorderRadiusTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
Matrix4Tween _createMatrix4TweenWidget([arg]) {
    return new Matrix4Tween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
TextStyleTween _createTextStyleTweenWidget([arg]) {
    return new TextStyleTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
AnimatedContainer _createAnimatedContainerWidget([arg]) {
    return new AnimatedContainer(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : null,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        foregroundDecoration: (arg is Map && arg.containsKey('foregroundDecoration')) ? arg['foregroundDecoration'] : null,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        constraints: (arg is Map && arg.containsKey('constraints')) ? arg['constraints'] : null,
        margin: (arg is Map && arg.containsKey('margin')) ? arg['margin'] : null,
        transform: (arg is Map && arg.containsKey('transform')) ? arg['transform'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
AnimatedPadding _createAnimatedPaddingWidget([arg]) {
    return new AnimatedPadding(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
AnimatedAlign _createAnimatedAlignWidget([arg]) {
    return new AnimatedAlign(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
AnimatedPositioned _createAnimatedPositionedWidget([arg]) {
    return new AnimatedPositioned(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        left: (arg is Map && arg.containsKey('left')) ? arg['left'] : null,
        top: (arg is Map && arg.containsKey('top')) ? arg['top'] : null,
        right: (arg is Map && arg.containsKey('right')) ? arg['right'] : null,
        bottom: (arg is Map && arg.containsKey('bottom')) ? arg['bottom'] : null,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
AnimatedPositioned _createAnimatedPositioned_fromRectWidget([arg]) {
    return AnimatedPositioned.fromRect(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        rect: (arg is Map && arg.containsKey('rect')) ? arg['rect'] : null,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
AnimatedPositionedDirectional _createAnimatedPositionedDirectionalWidget([arg]) {
    return new AnimatedPositionedDirectional(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        start: (arg is Map && arg.containsKey('start')) ? arg['start'] : null,
        top: (arg is Map && arg.containsKey('top')) ? arg['top'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null,
        bottom: (arg is Map && arg.containsKey('bottom')) ? arg['bottom'] : null,
        width: (arg is Map && arg.containsKey('width')) ? arg['width'] : null,
        height: (arg is Map && arg.containsKey('height')) ? arg['height'] : null,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
AnimatedOpacity _createAnimatedOpacityWidget([arg]) {
    return new AnimatedOpacity(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ opacity: (arg is Map && arg.containsKey('opacity')) ? arg['opacity'] : null,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
AnimatedDefaultTextStyle _createAnimatedDefaultTextStyleWidget([arg]) {
    return new AnimatedDefaultTextStyle(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ style: (arg is Map && arg.containsKey('style')) ? arg['style'] : null,
        textAlign: (arg is Map && arg.containsKey('textAlign')) ? arg['textAlign'] : null,
        softWrap: (arg is Map && arg.containsKey('softWrap')) ? arg['softWrap'] : true,
        overflow: (arg is Map && arg.containsKey('overflow')) ? arg['overflow'] : TextOverflow.clip,
        maxLines: (arg is Map && arg.containsKey('maxLines')) ? arg['maxLines'] : null,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/implicit_animations.dart
AnimatedPhysicalModel _createAnimatedPhysicalModelWidget([arg]) {
    return new AnimatedPhysicalModel(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ shape: (arg is Map && arg.containsKey('shape')) ? arg['shape'] : null,
        borderRadius: (arg is Map && arg.containsKey('borderRadius')) ? arg['borderRadius'] : BorderRadius.zero,
        /*@required*/ elevation: (arg is Map && arg.containsKey('elevation')) ? arg['elevation'] : null,
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        animateColor: (arg is Map && arg.containsKey('animateColor')) ? arg['animateColor'] : true,
        /*@required*/ shadowColor: (arg is Map && arg.containsKey('shadowColor')) ? arg['shadowColor'] : null,
        animateShadowColor: (arg is Map && arg.containsKey('animateShadowColor')) ? arg['animateShadowColor'] : true,
        curve: (arg is Map && arg.containsKey('curve')) ? arg['curve'] : Curves.linear,
        /*@required*/ duration: (arg is Map && arg.containsKey('duration')) ? arg['duration'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/layout_builder.dart
LayoutBuilder _createLayoutBuilderWidget([arg]) {
    return new LayoutBuilder(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/list_wheel_scroll_view.dart
FixedExtentScrollController _createFixedExtentScrollControllerWidget([arg]) {
    return new FixedExtentScrollController(
        initialItem: (arg is Map && arg.containsKey('initialItem')) ? arg['initialItem'] : 0
    );
}


// flutter/packages/flutter/lib/src/widgets/list_wheel_scroll_view.dart
FixedExtentMetrics _createFixedExtentMetricsWidget([arg]) {
    return new FixedExtentMetrics(
        /*@required*/ minScrollExtent: (arg is Map && arg.containsKey('minScrollExtent')) ? arg['minScrollExtent'] : null,
        /*@required*/ maxScrollExtent: (arg is Map && arg.containsKey('maxScrollExtent')) ? arg['maxScrollExtent'] : null,
        /*@required*/ pixels: (arg is Map && arg.containsKey('pixels')) ? arg['pixels'] : null,
        /*@required*/ viewportDimension: (arg is Map && arg.containsKey('viewportDimension')) ? arg['viewportDimension'] : null,
        /*@required*/ axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : null,
        /*@required*/ itemIndex: (arg is Map && arg.containsKey('itemIndex')) ? arg['itemIndex'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/list_wheel_scroll_view.dart
FixedExtentScrollPhysics _createFixedExtentScrollPhysicsWidget([arg]) {
    return new FixedExtentScrollPhysics(
        parent: (arg is Map && arg.containsKey('parent')) ? arg['parent'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/list_wheel_scroll_view.dart
ListWheelScrollView _createListWheelScrollViewWidget([arg]) {
    return new ListWheelScrollView(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        diameterRatio: (arg is Map && arg.containsKey('diameterRatio')) ? arg['diameterRatio'] : RenderListWheelViewport.defaultDiameterRatio,
        perspective: (arg is Map && arg.containsKey('perspective')) ? arg['perspective'] : RenderListWheelViewport.defaultPerspective,
        /*@required*/ itemExtent: (arg is Map && arg.containsKey('itemExtent')) ? arg['itemExtent'] : null,
        onSelectedItemChanged: (arg is Map && arg.containsKey('onSelectedItemChanged')) ? arg['onSelectedItemChanged'] : null,
        clipToSize: (arg is Map && arg.containsKey('clipToSize')) ? arg['clipToSize'] : true,
        renderChildrenOutsideViewport: (arg is Map && arg.containsKey('renderChildrenOutsideViewport')) ? arg['renderChildrenOutsideViewport'] : false,
        /*@required*/ children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/list_wheel_scroll_view.dart
ListWheelViewport _createListWheelViewportWidget([arg]) {
    return new ListWheelViewport(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        diameterRatio: (arg is Map && arg.containsKey('diameterRatio')) ? arg['diameterRatio'] : RenderListWheelViewport.defaultDiameterRatio,
        perspective: (arg is Map && arg.containsKey('perspective')) ? arg['perspective'] : RenderListWheelViewport.defaultPerspective,
        /*@required*/ itemExtent: (arg is Map && arg.containsKey('itemExtent')) ? arg['itemExtent'] : null,
        clipToSize: (arg is Map && arg.containsKey('clipToSize')) ? arg['clipToSize'] : true,
        renderChildrenOutsideViewport: (arg is Map && arg.containsKey('renderChildrenOutsideViewport')) ? arg['renderChildrenOutsideViewport'] : false,
        /*@required*/ offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/localizations.dart
Localizations _createLocalizationsWidget([arg]) {
    return new Localizations(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ locale: (arg is Map && arg.containsKey('locale')) ? arg['locale'] : null,
        /*@required*/ delegates: (arg is Map && arg.containsKey('delegates')) ? arg['delegates'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/media_query.dart
MediaQueryData _createMediaQueryDataWidget([arg]) {
    return new MediaQueryData(
        size: (arg is Map && arg.containsKey('size')) ? arg['size'] : Size.zero,
        devicePixelRatio: (arg is Map && arg.containsKey('devicePixelRatio')) ? arg['devicePixelRatio'] : 1.0,
        textScaleFactor: (arg is Map && arg.containsKey('textScaleFactor')) ? arg['textScaleFactor'] : 1.0,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : EdgeInsets.zero,
        viewInsets: (arg is Map && arg.containsKey('viewInsets')) ? arg['viewInsets'] : EdgeInsets.zero,
        alwaysUse24HourFormat: (arg is Map && arg.containsKey('alwaysUse24HourFormat')) ? arg['alwaysUse24HourFormat'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/media_query.dart
MediaQuery _createMediaQueryWidget([arg]) {
    return new MediaQuery(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ data: (arg is Map && arg.containsKey('data')) ? arg['data'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/media_query.dart
MediaQuery _createMediaQuery_removePaddingWidget([arg]) {
    return MediaQuery.removePadding(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        removeLeft: (arg is Map && arg.containsKey('removeLeft')) ? arg['removeLeft'] : false,
        removeTop: (arg is Map && arg.containsKey('removeTop')) ? arg['removeTop'] : false,
        removeRight: (arg is Map && arg.containsKey('removeRight')) ? arg['removeRight'] : false,
        removeBottom: (arg is Map && arg.containsKey('removeBottom')) ? arg['removeBottom'] : false,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/modal_barrier.dart
ModalBarrier _createModalBarrierWidget([arg]) {
    return new ModalBarrier(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        dismissible: (arg is Map && arg.containsKey('dismissible')) ? arg['dismissible'] : true,
        semanticsLabel: (arg is Map && arg.containsKey('semanticsLabel')) ? arg['semanticsLabel'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/modal_barrier.dart
AnimatedModalBarrier _createAnimatedModalBarrierWidget([arg]) {
    return new AnimatedModalBarrier(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        dismissible: (arg is Map && arg.containsKey('dismissible')) ? arg['dismissible'] : true,
        semanticsLabel: (arg is Map && arg.containsKey('semanticsLabel')) ? arg['semanticsLabel'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/navigation_toolbar.dart
NavigationToolbar _createNavigationToolbarWidget([arg]) {
    return new NavigationToolbar(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        leading: (arg is Map && arg.containsKey('leading')) ? arg['leading'] : null,
        middle: (arg is Map && arg.containsKey('middle')) ? arg['middle'] : null,
        trailing: (arg is Map && arg.containsKey('trailing')) ? arg['trailing'] : null,
        centerMiddle: (arg is Map && arg.containsKey('centerMiddle')) ? arg['centerMiddle'] : true,
        middleSpacing: (arg is Map && arg.containsKey('middleSpacing')) ? arg['middleSpacing'] : kMiddleSpacing
    );
}


// flutter/packages/flutter/lib/src/widgets/navigator.dart
RouteSettings _createRouteSettingsWidget([arg]) {
    return new RouteSettings(
        name: (arg is Map && arg.containsKey('name')) ? arg['name'] : null,
        isInitialRoute: (arg is Map && arg.containsKey('isInitialRoute')) ? arg['isInitialRoute'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/navigator.dart
Navigator _createNavigatorWidget([arg]) {
    return new Navigator(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        initialRoute: (arg is Map && arg.containsKey('initialRoute')) ? arg['initialRoute'] : null,
        /*@required*/ onGenerateRoute: (arg is Map && arg.containsKey('onGenerateRoute')) ? arg['onGenerateRoute'] : null,
        onUnknownRoute: (arg is Map && arg.containsKey('onUnknownRoute')) ? arg['onUnknownRoute'] : null,
        observers: (arg is Map && arg.containsKey('observers')) ? arg['observers'] : const <NavigatorObserver>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/nested_scroll_view.dart
NestedScrollView _createNestedScrollViewWidget([arg]) {
    return new NestedScrollView(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        scrollDirection: (arg is Map && arg.containsKey('scrollDirection')) ? arg['scrollDirection'] : Axis.vertical,
        reverse: (arg is Map && arg.containsKey('reverse')) ? arg['reverse'] : false,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        /*@required*/ headerSliverBuilder: (arg is Map && arg.containsKey('headerSliverBuilder')) ? arg['headerSliverBuilder'] : null,
        /*@required*/ body: (arg is Map && arg.containsKey('body')) ? arg['body'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/nested_scroll_view.dart
SliverOverlapAbsorber _createSliverOverlapAbsorberWidget([arg]) {
    return new SliverOverlapAbsorber(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ handle: (arg is Map && arg.containsKey('handle')) ? arg['handle'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/nested_scroll_view.dart
RenderSliverOverlapAbsorber _createRenderSliverOverlapAbsorberWidget([arg]) {
    return new RenderSliverOverlapAbsorber(
        /*@required*/ handle: (arg is Map && arg.containsKey('handle')) ? arg['handle'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/nested_scroll_view.dart
SliverOverlapInjector _createSliverOverlapInjectorWidget([arg]) {
    return new SliverOverlapInjector(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ handle: (arg is Map && arg.containsKey('handle')) ? arg['handle'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/nested_scroll_view.dart
RenderSliverOverlapInjector _createRenderSliverOverlapInjectorWidget([arg]) {
    return new RenderSliverOverlapInjector(
        /*@required*/ handle: (arg is Map && arg.containsKey('handle')) ? arg['handle'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/nested_scroll_view.dart
NestedScrollViewViewport _createNestedScrollViewViewportWidget([arg]) {
    return new NestedScrollViewViewport(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : AxisDirection.down,
        crossAxisDirection: (arg is Map && arg.containsKey('crossAxisDirection')) ? arg['crossAxisDirection'] : null,
        anchor: (arg is Map && arg.containsKey('anchor')) ? arg['anchor'] : 0.0,
        /*@required*/ offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : null,
        center: (arg is Map && arg.containsKey('center')) ? arg['center'] : null,
        slivers: (arg is Map && arg.containsKey('slivers')) ? arg['slivers'] : const <Widget>[],
        /*@required*/ handle: (arg is Map && arg.containsKey('handle')) ? arg['handle'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/nested_scroll_view.dart
RenderNestedScrollViewViewport _createRenderNestedScrollViewViewportWidget([arg]) {
    return new RenderNestedScrollViewViewport(
        axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : AxisDirection.down,
        /*@required*/ crossAxisDirection: (arg is Map && arg.containsKey('crossAxisDirection')) ? arg['crossAxisDirection'] : null,
        /*@required*/ offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : null,
        anchor: (arg is Map && arg.containsKey('anchor')) ? arg['anchor'] : 0.0,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null,
        center: (arg is Map && arg.containsKey('center')) ? arg['center'] : null,
        /*@required*/ handle: (arg is Map && arg.containsKey('handle')) ? arg['handle'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/notification_listener.dart
NotificationListener _createNotificationListenerWidget([arg]) {
    return new NotificationListener(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        onNotification: (arg is Map && arg.containsKey('onNotification')) ? arg['onNotification'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/orientation_builder.dart
OrientationBuilder _createOrientationBuilderWidget([arg]) {
    return new OrientationBuilder(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/overlay.dart
OverlayEntry _createOverlayEntryWidget([arg]) {
    return new OverlayEntry(
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null,
        opaque: (arg is Map && arg.containsKey('opaque')) ? arg['opaque'] : false,
        maintainState: (arg is Map && arg.containsKey('maintainState')) ? arg['maintainState'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/overlay.dart
Overlay _createOverlayWidget([arg]) {
    return new Overlay(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        initialEntries: (arg is Map && arg.containsKey('initialEntries')) ? arg['initialEntries'] : const <OverlayEntry>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/overscroll_indicator.dart
GlowingOverscrollIndicator _createGlowingOverscrollIndicatorWidget([arg]) {
    return new GlowingOverscrollIndicator(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        showLeading: (arg is Map && arg.containsKey('showLeading')) ? arg['showLeading'] : true,
        showTrailing: (arg is Map && arg.containsKey('showTrailing')) ? arg['showTrailing'] : true,
        /*@required*/ axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : null,
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        notificationPredicate: (arg is Map && arg.containsKey('notificationPredicate')) ? arg['notificationPredicate'] : defaultScrollNotificationPredicate,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/overscroll_indicator.dart
OverscrollIndicatorNotification _createOverscrollIndicatorNotificationWidget([arg]) {
    return new OverscrollIndicatorNotification(
        /*@required*/ leading: (arg is Map && arg.containsKey('leading')) ? arg['leading'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/page_storage.dart
PageStorage _createPageStorageWidget([arg]) {
    return new PageStorage(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ bucket: (arg is Map && arg.containsKey('bucket')) ? arg['bucket'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/page_view.dart
PageController _createPageControllerWidget([arg]) {
    return new PageController(
        initialPage: (arg is Map && arg.containsKey('initialPage')) ? arg['initialPage'] : 0,
        keepPage: (arg is Map && arg.containsKey('keepPage')) ? arg['keepPage'] : true,
        viewportFraction: (arg is Map && arg.containsKey('viewportFraction')) ? arg['viewportFraction'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/widgets/page_view.dart
PageMetrics _createPageMetricsWidget([arg]) {
    return new PageMetrics(
        /*@required*/ minScrollExtent: (arg is Map && arg.containsKey('minScrollExtent')) ? arg['minScrollExtent'] : null,
        /*@required*/ maxScrollExtent: (arg is Map && arg.containsKey('maxScrollExtent')) ? arg['maxScrollExtent'] : null,
        /*@required*/ pixels: (arg is Map && arg.containsKey('pixels')) ? arg['pixels'] : null,
        /*@required*/ viewportDimension: (arg is Map && arg.containsKey('viewportDimension')) ? arg['viewportDimension'] : null,
        /*@required*/ axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : null,
        /*@required*/ viewportFraction: (arg is Map && arg.containsKey('viewportFraction')) ? arg['viewportFraction'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/page_view.dart
PageScrollPhysics _createPageScrollPhysicsWidget([arg]) {
    return new PageScrollPhysics(
        parent: (arg is Map && arg.containsKey('parent')) ? arg['parent'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/page_view.dart
PageView _createPageViewWidget([arg]) {
    return new PageView(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        scrollDirection: (arg is Map && arg.containsKey('scrollDirection')) ? arg['scrollDirection'] : Axis.horizontal,
        reverse: (arg is Map && arg.containsKey('reverse')) ? arg['reverse'] : false,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        pageSnapping: (arg is Map && arg.containsKey('pageSnapping')) ? arg['pageSnapping'] : true,
        onPageChanged: (arg is Map && arg.containsKey('onPageChanged')) ? arg['onPageChanged'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/page_view.dart
PageView _createPageView_builderWidget([arg]) {
    return PageView.builder(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        scrollDirection: (arg is Map && arg.containsKey('scrollDirection')) ? arg['scrollDirection'] : Axis.horizontal,
        reverse: (arg is Map && arg.containsKey('reverse')) ? arg['reverse'] : false,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        pageSnapping: (arg is Map && arg.containsKey('pageSnapping')) ? arg['pageSnapping'] : true,
        onPageChanged: (arg is Map && arg.containsKey('onPageChanged')) ? arg['onPageChanged'] : null,
        /*@required*/ itemBuilder: (arg is Map && arg.containsKey('itemBuilder')) ? arg['itemBuilder'] : null,
        itemCount: (arg is Map && arg.containsKey('itemCount')) ? arg['itemCount'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/pages.dart
PageRouteBuilder _createPageRouteBuilderWidget([arg]) {
    return new PageRouteBuilder(
        settings: (arg is Map && arg.containsKey('settings')) ? arg['settings'] : null,
        /*@required*/ pageBuilder: (arg is Map && arg.containsKey('pageBuilder')) ? arg['pageBuilder'] : null,
        transitionsBuilder: (arg is Map && arg.containsKey('transitionsBuilder')) ? arg['transitionsBuilder'] : _defaultTransitionsBuilder,
        transitionDuration: (arg is Map && arg.containsKey('transitionDuration')) ? arg['transitionDuration'] : const Duration(milliseconds : 300),
        opaque: (arg is Map && arg.containsKey('opaque')) ? arg['opaque'] : true,
        barrierDismissible: (arg is Map && arg.containsKey('barrierDismissible')) ? arg['barrierDismissible'] : false,
        barrierColor: (arg is Map && arg.containsKey('barrierColor')) ? arg['barrierColor'] : null,
        barrierLabel: (arg is Map && arg.containsKey('barrierLabel')) ? arg['barrierLabel'] : null,
        maintainState: (arg is Map && arg.containsKey('maintainState')) ? arg['maintainState'] : true
    );
}


// flutter/packages/flutter/lib/src/widgets/performance_overlay.dart
PerformanceOverlay _createPerformanceOverlayWidget([arg]) {
    return new PerformanceOverlay(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        optionsMask: (arg is Map && arg.containsKey('optionsMask')) ? arg['optionsMask'] : 0,
        rasterizerThreshold: (arg is Map && arg.containsKey('rasterizerThreshold')) ? arg['rasterizerThreshold'] : 0,
        checkerboardRasterCacheImages: (arg is Map && arg.containsKey('checkerboardRasterCacheImages')) ? arg['checkerboardRasterCacheImages'] : false,
        checkerboardOffscreenLayers: (arg is Map && arg.containsKey('checkerboardOffscreenLayers')) ? arg['checkerboardOffscreenLayers'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/performance_overlay.dart
PerformanceOverlay _createPerformanceOverlay_allEnabledWidget([arg]) {
    return PerformanceOverlay.allEnabled(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        rasterizerThreshold: (arg is Map && arg.containsKey('rasterizerThreshold')) ? arg['rasterizerThreshold'] : 0,
        checkerboardRasterCacheImages: (arg is Map && arg.containsKey('checkerboardRasterCacheImages')) ? arg['checkerboardRasterCacheImages'] : false,
        checkerboardOffscreenLayers: (arg is Map && arg.containsKey('checkerboardOffscreenLayers')) ? arg['checkerboardOffscreenLayers'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/placeholder.dart
Placeholder _createPlaceholderWidget([arg]) {
    return new Placeholder(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        color: (arg is Map && arg.containsKey('color')) ? arg['color'] : const Color(0xFF455A64),
        strokeWidth: (arg is Map && arg.containsKey('strokeWidth')) ? arg['strokeWidth'] : 2.0,
        fallbackWidth: (arg is Map && arg.containsKey('fallbackWidth')) ? arg['fallbackWidth'] : 400.0,
        fallbackHeight: (arg is Map && arg.containsKey('fallbackHeight')) ? arg['fallbackHeight'] : 400.0
    );
}


// flutter/packages/flutter/lib/src/widgets/preferred_size.dart
PreferredSize _createPreferredSizeWidget([arg]) {
    return new PreferredSize(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ preferredSize: (arg is Map && arg.containsKey('preferredSize')) ? arg['preferredSize'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/primary_scroll_controller.dart
PrimaryScrollController _createPrimaryScrollControllerWidget([arg]) {
    return new PrimaryScrollController(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/primary_scroll_controller.dart
PrimaryScrollController _createPrimaryScrollController_noneWidget([arg]) {
    return PrimaryScrollController.none(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/raw_keyboard_listener.dart
RawKeyboardListener _createRawKeyboardListenerWidget([arg]) {
    return new RawKeyboardListener(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ focusNode: (arg is Map && arg.containsKey('focusNode')) ? arg['focusNode'] : null,
        /*@required*/ onKey: (arg is Map && arg.containsKey('onKey')) ? arg['onKey'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/routes.dart
LocalHistoryEntry _createLocalHistoryEntryWidget([arg]) {
    return new LocalHistoryEntry(
        onRemove: (arg is Map && arg.containsKey('onRemove')) ? arg['onRemove'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/safe_area.dart
SafeArea _createSafeAreaWidget([arg]) {
    return new SafeArea(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        left: (arg is Map && arg.containsKey('left')) ? arg['left'] : true,
        top: (arg is Map && arg.containsKey('top')) ? arg['top'] : true,
        right: (arg is Map && arg.containsKey('right')) ? arg['right'] : true,
        bottom: (arg is Map && arg.containsKey('bottom')) ? arg['bottom'] : true,
        minimum: (arg is Map && arg.containsKey('minimum')) ? arg['minimum'] : EdgeInsets.zero,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/safe_area.dart
SliverSafeArea _createSliverSafeAreaWidget([arg]) {
    return new SliverSafeArea(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        left: (arg is Map && arg.containsKey('left')) ? arg['left'] : true,
        top: (arg is Map && arg.containsKey('top')) ? arg['top'] : true,
        right: (arg is Map && arg.containsKey('right')) ? arg['right'] : true,
        bottom: (arg is Map && arg.containsKey('bottom')) ? arg['bottom'] : true,
        minimum: (arg is Map && arg.containsKey('minimum')) ? arg['minimum'] : EdgeInsets.zero,
        /*@required*/ sliver: (arg is Map && arg.containsKey('sliver')) ? arg['sliver'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_activity.dart
HoldScrollActivity _createHoldScrollActivityWidget([arg]) {
    return new HoldScrollActivity(
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null,
        onHoldCanceled: (arg is Map && arg.containsKey('onHoldCanceled')) ? arg['onHoldCanceled'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_activity.dart
ScrollDragController _createScrollDragControllerWidget([arg]) {
    return new ScrollDragController(
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null,
        /*@required*/ details: (arg is Map && arg.containsKey('details')) ? arg['details'] : null,
        onDragCanceled: (arg is Map && arg.containsKey('onDragCanceled')) ? arg['onDragCanceled'] : null,
        carriedVelocity: (arg is Map && arg.containsKey('carriedVelocity')) ? arg['carriedVelocity'] : null,
        motionStartDistanceThreshold: (arg is Map && arg.containsKey('motionStartDistanceThreshold')) ? arg['motionStartDistanceThreshold'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_configuration.dart
ScrollConfiguration _createScrollConfigurationWidget([arg]) {
    return new ScrollConfiguration(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ behavior: (arg is Map && arg.containsKey('behavior')) ? arg['behavior'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_controller.dart
ScrollController _createScrollControllerWidget([arg]) {
    return new ScrollController(
        initialScrollOffset: (arg is Map && arg.containsKey('initialScrollOffset')) ? arg['initialScrollOffset'] : 0.0,
        keepScrollOffset: (arg is Map && arg.containsKey('keepScrollOffset')) ? arg['keepScrollOffset'] : true,
        debugLabel: (arg is Map && arg.containsKey('debugLabel')) ? arg['debugLabel'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_controller.dart
TrackingScrollController _createTrackingScrollControllerWidget([arg]) {
    return new TrackingScrollController(
        initialScrollOffset: (arg is Map && arg.containsKey('initialScrollOffset')) ? arg['initialScrollOffset'] : 0.0,
        keepScrollOffset: (arg is Map && arg.containsKey('keepScrollOffset')) ? arg['keepScrollOffset'] : true,
        debugLabel: (arg is Map && arg.containsKey('debugLabel')) ? arg['debugLabel'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_metrics.dart
FixedScrollMetrics _createFixedScrollMetricsWidget([arg]) {
    return new FixedScrollMetrics(
        /*@required*/ minScrollExtent: (arg is Map && arg.containsKey('minScrollExtent')) ? arg['minScrollExtent'] : null,
        /*@required*/ maxScrollExtent: (arg is Map && arg.containsKey('maxScrollExtent')) ? arg['maxScrollExtent'] : null,
        /*@required*/ pixels: (arg is Map && arg.containsKey('pixels')) ? arg['pixels'] : null,
        /*@required*/ viewportDimension: (arg is Map && arg.containsKey('viewportDimension')) ? arg['viewportDimension'] : null,
        /*@required*/ axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_notification.dart
ScrollStartNotification _createScrollStartNotificationWidget([arg]) {
    return new ScrollStartNotification(
        /*@required*/ metrics: (arg is Map && arg.containsKey('metrics')) ? arg['metrics'] : null,
        /*@required*/ context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        dragDetails: (arg is Map && arg.containsKey('dragDetails')) ? arg['dragDetails'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_notification.dart
ScrollUpdateNotification _createScrollUpdateNotificationWidget([arg]) {
    return new ScrollUpdateNotification(
        /*@required*/ metrics: (arg is Map && arg.containsKey('metrics')) ? arg['metrics'] : null,
        /*@required*/ context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        dragDetails: (arg is Map && arg.containsKey('dragDetails')) ? arg['dragDetails'] : null,
        scrollDelta: (arg is Map && arg.containsKey('scrollDelta')) ? arg['scrollDelta'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_notification.dart
OverscrollNotification _createOverscrollNotificationWidget([arg]) {
    return new OverscrollNotification(
        /*@required*/ metrics: (arg is Map && arg.containsKey('metrics')) ? arg['metrics'] : null,
        /*@required*/ context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        dragDetails: (arg is Map && arg.containsKey('dragDetails')) ? arg['dragDetails'] : null,
        /*@required*/ overscroll: (arg is Map && arg.containsKey('overscroll')) ? arg['overscroll'] : null,
        velocity: (arg is Map && arg.containsKey('velocity')) ? arg['velocity'] : 0.0
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_notification.dart
ScrollEndNotification _createScrollEndNotificationWidget([arg]) {
    return new ScrollEndNotification(
        /*@required*/ metrics: (arg is Map && arg.containsKey('metrics')) ? arg['metrics'] : null,
        /*@required*/ context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        dragDetails: (arg is Map && arg.containsKey('dragDetails')) ? arg['dragDetails'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_notification.dart
UserScrollNotification _createUserScrollNotificationWidget([arg]) {
    return new UserScrollNotification(
        /*@required*/ metrics: (arg is Map && arg.containsKey('metrics')) ? arg['metrics'] : null,
        /*@required*/ context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        direction: (arg is Map && arg.containsKey('direction')) ? arg['direction'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_physics.dart
ScrollPhysics _createScrollPhysicsWidget([arg]) {
    return new ScrollPhysics(
        parent: (arg is Map && arg.containsKey('parent')) ? arg['parent'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_physics.dart
BouncingScrollPhysics _createBouncingScrollPhysicsWidget([arg]) {
    return new BouncingScrollPhysics(
        parent: (arg is Map && arg.containsKey('parent')) ? arg['parent'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_physics.dart
ClampingScrollPhysics _createClampingScrollPhysicsWidget([arg]) {
    return new ClampingScrollPhysics(
        parent: (arg is Map && arg.containsKey('parent')) ? arg['parent'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_physics.dart
AlwaysScrollableScrollPhysics _createAlwaysScrollableScrollPhysicsWidget([arg]) {
    return new AlwaysScrollableScrollPhysics(
        parent: (arg is Map && arg.containsKey('parent')) ? arg['parent'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_physics.dart
NeverScrollableScrollPhysics _createNeverScrollableScrollPhysicsWidget([arg]) {
    return new NeverScrollableScrollPhysics(
        parent: (arg is Map && arg.containsKey('parent')) ? arg['parent'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_position_with_single_context.dart
ScrollPositionWithSingleContext _createScrollPositionWithSingleContextWidget([arg]) {
    return new ScrollPositionWithSingleContext(
        /*@required*/ physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        /*@required*/ context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        initialPixels: (arg is Map && arg.containsKey('initialPixels')) ? arg['initialPixels'] : 0.0,
        keepScrollOffset: (arg is Map && arg.containsKey('keepScrollOffset')) ? arg['keepScrollOffset'] : true,
        oldPosition: (arg is Map && arg.containsKey('oldPosition')) ? arg['oldPosition'] : null,
        debugLabel: (arg is Map && arg.containsKey('debugLabel')) ? arg['debugLabel'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_simulation.dart
BouncingScrollSimulation _createBouncingScrollSimulationWidget([arg]) {
    return new BouncingScrollSimulation(
        /*@required*/ position: (arg is Map && arg.containsKey('position')) ? arg['position'] : null,
        /*@required*/ velocity: (arg is Map && arg.containsKey('velocity')) ? arg['velocity'] : null,
        /*@required*/ leadingExtent: (arg is Map && arg.containsKey('leadingExtent')) ? arg['leadingExtent'] : null,
        /*@required*/ trailingExtent: (arg is Map && arg.containsKey('trailingExtent')) ? arg['trailingExtent'] : null,
        /*@required*/ spring: (arg is Map && arg.containsKey('spring')) ? arg['spring'] : null,
        tolerance: (arg is Map && arg.containsKey('tolerance')) ? arg['tolerance'] : Tolerance.defaultTolerance
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_simulation.dart
ClampingScrollSimulation _createClampingScrollSimulationWidget([arg]) {
    return new ClampingScrollSimulation(
        /*@required*/ position: (arg is Map && arg.containsKey('position')) ? arg['position'] : null,
        /*@required*/ velocity: (arg is Map && arg.containsKey('velocity')) ? arg['velocity'] : null,
        friction: (arg is Map && arg.containsKey('friction')) ? arg['friction'] : 0.015,
        tolerance: (arg is Map && arg.containsKey('tolerance')) ? arg['tolerance'] : Tolerance.defaultTolerance
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_view.dart
CustomScrollView _createCustomScrollViewWidget([arg]) {
    return new CustomScrollView(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        scrollDirection: (arg is Map && arg.containsKey('scrollDirection')) ? arg['scrollDirection'] : Axis.vertical,
        reverse: (arg is Map && arg.containsKey('reverse')) ? arg['reverse'] : false,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        primary: (arg is Map && arg.containsKey('primary')) ? arg['primary'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        shrinkWrap: (arg is Map && arg.containsKey('shrinkWrap')) ? arg['shrinkWrap'] : false,
        cacheExtent: (arg is Map && arg.containsKey('cacheExtent')) ? arg['cacheExtent'] : null,
        slivers: (arg is Map && arg.containsKey('slivers')) ? arg['slivers'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_view.dart
ListView _createListViewWidget([arg]) {
    return new ListView(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        scrollDirection: (arg is Map && arg.containsKey('scrollDirection')) ? arg['scrollDirection'] : Axis.vertical,
        reverse: (arg is Map && arg.containsKey('reverse')) ? arg['reverse'] : false,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        primary: (arg is Map && arg.containsKey('primary')) ? arg['primary'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        shrinkWrap: (arg is Map && arg.containsKey('shrinkWrap')) ? arg['shrinkWrap'] : false,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        itemExtent: (arg is Map && arg.containsKey('itemExtent')) ? arg['itemExtent'] : null,
        addAutomaticKeepAlives: (arg is Map && arg.containsKey('addAutomaticKeepAlives')) ? arg['addAutomaticKeepAlives'] : true,
        addRepaintBoundaries: (arg is Map && arg.containsKey('addRepaintBoundaries')) ? arg['addRepaintBoundaries'] : true,
        cacheExtent: (arg is Map && arg.containsKey('cacheExtent')) ? arg['cacheExtent'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_view.dart
ListView _createListView_builderWidget([arg]) {
    return ListView.builder(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        scrollDirection: (arg is Map && arg.containsKey('scrollDirection')) ? arg['scrollDirection'] : Axis.vertical,
        reverse: (arg is Map && arg.containsKey('reverse')) ? arg['reverse'] : false,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        primary: (arg is Map && arg.containsKey('primary')) ? arg['primary'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        shrinkWrap: (arg is Map && arg.containsKey('shrinkWrap')) ? arg['shrinkWrap'] : false,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        itemExtent: (arg is Map && arg.containsKey('itemExtent')) ? arg['itemExtent'] : null,
        /*@required*/ itemBuilder: (arg is Map && arg.containsKey('itemBuilder')) ? arg['itemBuilder'] : null,
        itemCount: (arg is Map && arg.containsKey('itemCount')) ? arg['itemCount'] : null,
        addAutomaticKeepAlives: (arg is Map && arg.containsKey('addAutomaticKeepAlives')) ? arg['addAutomaticKeepAlives'] : true,
        addRepaintBoundaries: (arg is Map && arg.containsKey('addRepaintBoundaries')) ? arg['addRepaintBoundaries'] : true,
        cacheExtent: (arg is Map && arg.containsKey('cacheExtent')) ? arg['cacheExtent'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_view.dart
GridView _createGridViewWidget([arg]) {
    return new GridView(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        scrollDirection: (arg is Map && arg.containsKey('scrollDirection')) ? arg['scrollDirection'] : Axis.vertical,
        reverse: (arg is Map && arg.containsKey('reverse')) ? arg['reverse'] : false,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        primary: (arg is Map && arg.containsKey('primary')) ? arg['primary'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        shrinkWrap: (arg is Map && arg.containsKey('shrinkWrap')) ? arg['shrinkWrap'] : false,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        /*@required*/ gridDelegate: (arg is Map && arg.containsKey('gridDelegate')) ? arg['gridDelegate'] : null,
        addAutomaticKeepAlives: (arg is Map && arg.containsKey('addAutomaticKeepAlives')) ? arg['addAutomaticKeepAlives'] : true,
        addRepaintBoundaries: (arg is Map && arg.containsKey('addRepaintBoundaries')) ? arg['addRepaintBoundaries'] : true,
        cacheExtent: (arg is Map && arg.containsKey('cacheExtent')) ? arg['cacheExtent'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/scroll_view.dart
GridView _createGridView_builderWidget([arg]) {
    return GridView.builder(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        scrollDirection: (arg is Map && arg.containsKey('scrollDirection')) ? arg['scrollDirection'] : Axis.vertical,
        reverse: (arg is Map && arg.containsKey('reverse')) ? arg['reverse'] : false,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        primary: (arg is Map && arg.containsKey('primary')) ? arg['primary'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        shrinkWrap: (arg is Map && arg.containsKey('shrinkWrap')) ? arg['shrinkWrap'] : false,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        /*@required*/ gridDelegate: (arg is Map && arg.containsKey('gridDelegate')) ? arg['gridDelegate'] : null,
        /*@required*/ itemBuilder: (arg is Map && arg.containsKey('itemBuilder')) ? arg['itemBuilder'] : null,
        itemCount: (arg is Map && arg.containsKey('itemCount')) ? arg['itemCount'] : null,
        addAutomaticKeepAlives: (arg is Map && arg.containsKey('addAutomaticKeepAlives')) ? arg['addAutomaticKeepAlives'] : true,
        addRepaintBoundaries: (arg is Map && arg.containsKey('addRepaintBoundaries')) ? arg['addRepaintBoundaries'] : true,
        cacheExtent: (arg is Map && arg.containsKey('cacheExtent')) ? arg['cacheExtent'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/scrollable.dart
Scrollable _createScrollableWidget([arg]) {
    return new Scrollable(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : AxisDirection.down,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        /*@required*/ viewportBuilder: (arg is Map && arg.containsKey('viewportBuilder')) ? arg['viewportBuilder'] : null,
        excludeFromSemantics: (arg is Map && arg.containsKey('excludeFromSemantics')) ? arg['excludeFromSemantics'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/scrollbar.dart
ScrollbarPainter _createScrollbarPainterWidget([arg]) {
    return new ScrollbarPainter(
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        /*@required*/ textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        /*@required*/ thickness: (arg is Map && arg.containsKey('thickness')) ? arg['thickness'] : null,
        /*@required*/ fadeoutOpacityAnimation: (arg is Map && arg.containsKey('fadeoutOpacityAnimation')) ? arg['fadeoutOpacityAnimation'] : null,
        mainAxisMargin: (arg is Map && arg.containsKey('mainAxisMargin')) ? arg['mainAxisMargin'] : 0.0,
        crossAxisMargin: (arg is Map && arg.containsKey('crossAxisMargin')) ? arg['crossAxisMargin'] : 0.0,
        radius: (arg is Map && arg.containsKey('radius')) ? arg['radius'] : null,
        minLength: (arg is Map && arg.containsKey('minLength')) ? arg['minLength'] : _kMinThumbExtent
    );
}


// flutter/packages/flutter/lib/src/widgets/semantics_debugger.dart
SemanticsDebugger _createSemanticsDebuggerWidget([arg]) {
    return new SemanticsDebugger(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/single_child_scroll_view.dart
SingleChildScrollView _createSingleChildScrollViewWidget([arg]) {
    return new SingleChildScrollView(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        scrollDirection: (arg is Map && arg.containsKey('scrollDirection')) ? arg['scrollDirection'] : Axis.vertical,
        reverse: (arg is Map && arg.containsKey('reverse')) ? arg['reverse'] : false,
        padding: (arg is Map && arg.containsKey('padding')) ? arg['padding'] : null,
        primary: (arg is Map && arg.containsKey('primary')) ? arg['primary'] : null,
        physics: (arg is Map && arg.containsKey('physics')) ? arg['physics'] : null,
        controller: (arg is Map && arg.containsKey('controller')) ? arg['controller'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/size_changed_layout_notifier.dart
SizeChangedLayoutNotifier _createSizeChangedLayoutNotifierWidget([arg]) {
    return new SizeChangedLayoutNotifier(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/sliver_persistent_header.dart
SliverPersistentHeader _createSliverPersistentHeaderWidget([arg]) {
    return new SliverPersistentHeader(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null,
        pinned: (arg is Map && arg.containsKey('pinned')) ? arg['pinned'] : false,
        floating: (arg is Map && arg.containsKey('floating')) ? arg['floating'] : false
    );
}


// flutter/packages/flutter/lib/src/widgets/sliver_prototype_extent_list.dart
SliverPrototypeExtentList _createSliverPrototypeExtentListWidget([arg]) {
    return new SliverPrototypeExtentList(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null,
        /*@required*/ prototypeItem: (arg is Map && arg.containsKey('prototypeItem')) ? arg['prototypeItem'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/sliver.dart
SliverChildBuilderDelegate _createSliverChildBuilderDelegateWidget(data, [arg]) {
    return new SliverChildBuilderDelegate(
        data,
        childCount: (arg is Map && arg.containsKey('childCount')) ? arg['childCount'] : null,
        addAutomaticKeepAlives: (arg is Map && arg.containsKey('addAutomaticKeepAlives')) ? arg['addAutomaticKeepAlives'] : true,
        addRepaintBoundaries: (arg is Map && arg.containsKey('addRepaintBoundaries')) ? arg['addRepaintBoundaries'] : true
    );
}


// flutter/packages/flutter/lib/src/widgets/sliver.dart
SliverChildListDelegate _createSliverChildListDelegateWidget(data, [arg]) {
    return new SliverChildListDelegate(
        data,
        addAutomaticKeepAlives: (arg is Map && arg.containsKey('addAutomaticKeepAlives')) ? arg['addAutomaticKeepAlives'] : true,
        addRepaintBoundaries: (arg is Map && arg.containsKey('addRepaintBoundaries')) ? arg['addRepaintBoundaries'] : true
    );
}


// flutter/packages/flutter/lib/src/widgets/sliver.dart
SliverList _createSliverListWidget([arg]) {
    return new SliverList(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/sliver.dart
SliverFixedExtentList _createSliverFixedExtentListWidget([arg]) {
    return new SliverFixedExtentList(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null,
        /*@required*/ itemExtent: (arg is Map && arg.containsKey('itemExtent')) ? arg['itemExtent'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/sliver.dart
SliverGrid _createSliverGridWidget([arg]) {
    return new SliverGrid(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null,
        /*@required*/ gridDelegate: (arg is Map && arg.containsKey('gridDelegate')) ? arg['gridDelegate'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/sliver.dart
SliverGrid _createSliverGrid_countWidget([arg]) {
    return SliverGrid.count(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ crossAxisCount: (arg is Map && arg.containsKey('crossAxisCount')) ? arg['crossAxisCount'] : null,
        mainAxisSpacing: (arg is Map && arg.containsKey('mainAxisSpacing')) ? arg['mainAxisSpacing'] : 0.0,
        crossAxisSpacing: (arg is Map && arg.containsKey('crossAxisSpacing')) ? arg['crossAxisSpacing'] : 0.0,
        childAspectRatio: (arg is Map && arg.containsKey('childAspectRatio')) ? arg['childAspectRatio'] : 1.0,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/sliver.dart
SliverFillViewport _createSliverFillViewportWidget([arg]) {
    return new SliverFillViewport(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ delegate: (arg is Map && arg.containsKey('delegate')) ? arg['delegate'] : null,
        viewportFraction: (arg is Map && arg.containsKey('viewportFraction')) ? arg['viewportFraction'] : 1.0
    );
}


// flutter/packages/flutter/lib/src/widgets/sliver.dart
SliverFillRemaining _createSliverFillRemainingWidget([arg]) {
    return new SliverFillRemaining(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/sliver.dart
KeepAlive _createKeepAliveWidget([arg]) {
    return new KeepAlive(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ keepAlive: (arg is Map && arg.containsKey('keepAlive')) ? arg['keepAlive'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/spacer.dart
Spacer _createSpacerWidget([arg]) {
    return new Spacer(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        flex: (arg is Map && arg.containsKey('flex')) ? arg['flex'] : 1
    );
}


// flutter/packages/flutter/lib/src/widgets/table.dart
TableRow _createTableRowWidget([arg]) {
    return new TableRow(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/table.dart
Table _createTableWidget([arg]) {
    return new Table(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        children: (arg is Map && arg.containsKey('children')) ? arg['children'] : const <TableRow>[],
        columnWidths: (arg is Map && arg.containsKey('columnWidths')) ? arg['columnWidths'] : null,
        defaultColumnWidth: (arg is Map && arg.containsKey('defaultColumnWidth')) ? arg['defaultColumnWidth'] : const FlexColumnWidth(1.0),
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        border: (arg is Map && arg.containsKey('border')) ? arg['border'] : null,
        defaultVerticalAlignment: (arg is Map && arg.containsKey('defaultVerticalAlignment')) ? arg['defaultVerticalAlignment'] : TableCellVerticalAlignment.top,
        textBaseline: (arg is Map && arg.containsKey('textBaseline')) ? arg['textBaseline'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/table.dart
TableCell _createTableCellWidget([arg]) {
    return new TableCell(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        verticalAlignment: (arg is Map && arg.containsKey('verticalAlignment')) ? arg['verticalAlignment'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/text_selection.dart
TextSelectionOverlay _createTextSelectionOverlayWidget([arg]) {
    return new TextSelectionOverlay(
        /*@required*/ value: (arg is Map && arg.containsKey('value')) ? arg['value'] : null,
        /*@required*/ context: (arg is Map && arg.containsKey('context')) ? arg['context'] : null,
        debugRequiredFor: (arg is Map && arg.containsKey('debugRequiredFor')) ? arg['debugRequiredFor'] : null,
        /*@required*/ layerLink: (arg is Map && arg.containsKey('layerLink')) ? arg['layerLink'] : null,
        /*@required*/ renderObject: (arg is Map && arg.containsKey('renderObject')) ? arg['renderObject'] : null,
        selectionControls: (arg is Map && arg.containsKey('selectionControls')) ? arg['selectionControls'] : null,
        selectionDelegate: (arg is Map && arg.containsKey('selectionDelegate')) ? arg['selectionDelegate'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/text.dart
DefaultTextStyle _createDefaultTextStyleWidget([arg]) {
    return new DefaultTextStyle(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ style: (arg is Map && arg.containsKey('style')) ? arg['style'] : null,
        textAlign: (arg is Map && arg.containsKey('textAlign')) ? arg['textAlign'] : null,
        softWrap: (arg is Map && arg.containsKey('softWrap')) ? arg['softWrap'] : true,
        overflow: (arg is Map && arg.containsKey('overflow')) ? arg['overflow'] : TextOverflow.clip,
        maxLines: (arg is Map && arg.containsKey('maxLines')) ? arg['maxLines'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/text.dart
Text _createTextWidget(data, [arg]) {
    return new Text(
        data,
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        style: (arg is Map && arg.containsKey('style')) ? arg['style'] : null,
        textAlign: (arg is Map && arg.containsKey('textAlign')) ? arg['textAlign'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        softWrap: (arg is Map && arg.containsKey('softWrap')) ? arg['softWrap'] : null,
        overflow: (arg is Map && arg.containsKey('overflow')) ? arg['overflow'] : null,
        textScaleFactor: (arg is Map && arg.containsKey('textScaleFactor')) ? arg['textScaleFactor'] : null,
        maxLines: (arg is Map && arg.containsKey('maxLines')) ? arg['maxLines'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/text.dart
Text _createText_richWidget(data, [arg]) {
    return Text.rich(
        data,
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        style: (arg is Map && arg.containsKey('style')) ? arg['style'] : null,
        textAlign: (arg is Map && arg.containsKey('textAlign')) ? arg['textAlign'] : null,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        softWrap: (arg is Map && arg.containsKey('softWrap')) ? arg['softWrap'] : null,
        overflow: (arg is Map && arg.containsKey('overflow')) ? arg['overflow'] : null,
        textScaleFactor: (arg is Map && arg.containsKey('textScaleFactor')) ? arg['textScaleFactor'] : null,
        maxLines: (arg is Map && arg.containsKey('maxLines')) ? arg['maxLines'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/texture.dart
Texture _createTextureWidget([arg]) {
    return new Texture(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ textureId: (arg is Map && arg.containsKey('textureId')) ? arg['textureId'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/ticker_provider.dart
TickerMode _createTickerModeWidget([arg]) {
    return new TickerMode(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ enabled: (arg is Map && arg.containsKey('enabled')) ? arg['enabled'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/title.dart
Title _createTitleWidget([arg]) {
    return new Title(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        title: (arg is Map && arg.containsKey('title')) ? arg['title'] : '',
        /*@required*/ color: (arg is Map && arg.containsKey('color')) ? arg['color'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/transitions.dart
SlideTransition _createSlideTransitionWidget([arg]) {
    return new SlideTransition(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ position: (arg is Map && arg.containsKey('position')) ? arg['position'] : null,
        transformHitTests: (arg is Map && arg.containsKey('transformHitTests')) ? arg['transformHitTests'] : true,
        textDirection: (arg is Map && arg.containsKey('textDirection')) ? arg['textDirection'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/transitions.dart
ScaleTransition _createScaleTransitionWidget([arg]) {
    return new ScaleTransition(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ scale: (arg is Map && arg.containsKey('scale')) ? arg['scale'] : null,
        alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : Alignment.center,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/transitions.dart
RotationTransition _createRotationTransitionWidget([arg]) {
    return new RotationTransition(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ turns: (arg is Map && arg.containsKey('turns')) ? arg['turns'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/transitions.dart
SizeTransition _createSizeTransitionWidget([arg]) {
    return new SizeTransition(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        axis: (arg is Map && arg.containsKey('axis')) ? arg['axis'] : Axis.vertical,
        /*@required*/ sizeFactor: (arg is Map && arg.containsKey('sizeFactor')) ? arg['sizeFactor'] : null,
        axisAlignment: (arg is Map && arg.containsKey('axisAlignment')) ? arg['axisAlignment'] : 0.0,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/transitions.dart
FadeTransition _createFadeTransitionWidget([arg]) {
    return new FadeTransition(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ opacity: (arg is Map && arg.containsKey('opacity')) ? arg['opacity'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/transitions.dart
RelativeRectTween _createRelativeRectTweenWidget([arg]) {
    return new RelativeRectTween(
        begin: (arg is Map && arg.containsKey('begin')) ? arg['begin'] : null,
        end: (arg is Map && arg.containsKey('end')) ? arg['end'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/transitions.dart
PositionedTransition _createPositionedTransitionWidget([arg]) {
    return new PositionedTransition(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ rect: (arg is Map && arg.containsKey('rect')) ? arg['rect'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/transitions.dart
RelativePositionedTransition _createRelativePositionedTransitionWidget([arg]) {
    return new RelativePositionedTransition(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ rect: (arg is Map && arg.containsKey('rect')) ? arg['rect'] : null,
        /*@required*/ size: (arg is Map && arg.containsKey('size')) ? arg['size'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/transitions.dart
DecoratedBoxTransition _createDecoratedBoxTransitionWidget([arg]) {
    return new DecoratedBoxTransition(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ decoration: (arg is Map && arg.containsKey('decoration')) ? arg['decoration'] : null,
        position: (arg is Map && arg.containsKey('position')) ? arg['position'] : DecorationPosition.background,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/transitions.dart
AlignTransition _createAlignTransitionWidget([arg]) {
    return new AlignTransition(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ alignment: (arg is Map && arg.containsKey('alignment')) ? arg['alignment'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        widthFactor: (arg is Map && arg.containsKey('widthFactor')) ? arg['widthFactor'] : null,
        heightFactor: (arg is Map && arg.containsKey('heightFactor')) ? arg['heightFactor'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/transitions.dart
AnimatedBuilder _createAnimatedBuilderWidget([arg]) {
    return new AnimatedBuilder(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ animation: (arg is Map && arg.containsKey('animation')) ? arg['animation'] : null,
        /*@required*/ builder: (arg is Map && arg.containsKey('builder')) ? arg['builder'] : null,
        child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/viewport.dart
Viewport _createViewportWidget([arg]) {
    return new Viewport(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : AxisDirection.down,
        crossAxisDirection: (arg is Map && arg.containsKey('crossAxisDirection')) ? arg['crossAxisDirection'] : null,
        anchor: (arg is Map && arg.containsKey('anchor')) ? arg['anchor'] : 0.0,
        /*@required*/ offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : null,
        center: (arg is Map && arg.containsKey('center')) ? arg['center'] : null,
        cacheExtent: (arg is Map && arg.containsKey('cacheExtent')) ? arg['cacheExtent'] : null,
        slivers: (arg is Map && arg.containsKey('slivers')) ? arg['slivers'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/viewport.dart
ShrinkWrappingViewport _createShrinkWrappingViewportWidget([arg]) {
    return new ShrinkWrappingViewport(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        axisDirection: (arg is Map && arg.containsKey('axisDirection')) ? arg['axisDirection'] : AxisDirection.down,
        crossAxisDirection: (arg is Map && arg.containsKey('crossAxisDirection')) ? arg['crossAxisDirection'] : null,
        /*@required*/ offset: (arg is Map && arg.containsKey('offset')) ? arg['offset'] : null,
        slivers: (arg is Map && arg.containsKey('slivers')) ? arg['slivers'] : const <Widget>[]
    );
}


// flutter/packages/flutter/lib/src/widgets/widget_inspector.dart
WidgetInspector _createWidgetInspectorWidget([arg]) {
    return new WidgetInspector(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ selectButtonBuilder: (arg is Map && arg.containsKey('selectButtonBuilder')) ? arg['selectButtonBuilder'] : null
    );
}


// flutter/packages/flutter/lib/src/widgets/will_pop_scope.dart
WillPopScope _createWillPopScopeWidget([arg]) {
    return new WillPopScope(
        key: (arg is Map && arg.containsKey('key')) ? arg['key'] : null,
        /*@required*/ child: (arg is Map && arg.containsKey('child')) ? arg['child'] : null,
        /*@required*/ onWillPop: (arg is Map && arg.containsKey('onWillPop')) ? arg['onWillPop'] : null
    );
}


class WigetCreateInfo{
    final genFnc;
    final bool hasDataArgument;
    final String defaultChildArgumentName;

    WigetCreateInfo(this.genFnc, [this.hasDataArgument = false, this.defaultChildArgumentName = ""]);
}

var mapWidgets = {
    "animationcontroller" : new WigetCreateInfo(_createAnimationControllerWidget, false, ""),
    "animationcontroller.unbounded" : new WigetCreateInfo(_createAnimationController_unboundedWidget, false, ""),
    "curvedanimation" : new WigetCreateInfo(_createCurvedAnimationWidget, false, ""),
    "animationmean" : new WigetCreateInfo(_createAnimationMeanWidget, false, ""),
    "tween" : new WigetCreateInfo(_createTweenWidget, false, ""),
    "colortween" : new WigetCreateInfo(_createColorTweenWidget, false, ""),
    "sizetween" : new WigetCreateInfo(_createSizeTweenWidget, false, ""),
    "recttween" : new WigetCreateInfo(_createRectTweenWidget, false, ""),
    "inttween" : new WigetCreateInfo(_createIntTweenWidget, false, ""),
    "steptween" : new WigetCreateInfo(_createStepTweenWidget, false, ""),
    "curvetween" : new WigetCreateInfo(_createCurveTweenWidget, false, ""),
    "cupertinoactivityindicator" : new WigetCreateInfo(_createCupertinoActivityIndicatorWidget, false, ""),
    "cupertinotabbar" : new WigetCreateInfo(_createCupertinoTabBarWidget, false, ""),
    "cupertinobutton" : new WigetCreateInfo(_createCupertinoButtonWidget, false, "child"),
    "cupertinodialog" : new WigetCreateInfo(_createCupertinoDialogWidget, false, "child"),
    "cupertinoalertdialog" : new WigetCreateInfo(_createCupertinoAlertDialogWidget, false, ""),
    "cupertinodialogaction" : new WigetCreateInfo(_createCupertinoDialogActionWidget, false, "child"),
    "cupertinonavigationbar" : new WigetCreateInfo(_createCupertinoNavigationBarWidget, false, ""),
    "cupertinoslivernavigationbar" : new WigetCreateInfo(_createCupertinoSliverNavigationBarWidget, false, ""),
    "cupertinopagescaffold" : new WigetCreateInfo(_createCupertinoPageScaffoldWidget, false, "child"),
    "cupertinopicker" : new WigetCreateInfo(_createCupertinoPickerWidget, false, "children[]"),
    "cupertinorefreshcontrol" : new WigetCreateInfo(_createCupertinoRefreshControlWidget, false, ""),
    "cupertinopageroute" : new WigetCreateInfo(_createCupertinoPageRouteWidget, false, ""),
    "cupertinopagetransition" : new WigetCreateInfo(_createCupertinoPageTransitionWidget, false, "child"),
    "cupertinofullscreendialogtransition" : new WigetCreateInfo(_createCupertinoFullscreenDialogTransitionWidget, false, "child"),
    "cupertinoscrollbar" : new WigetCreateInfo(_createCupertinoScrollbarWidget, false, "child"),
    "cupertinoslider" : new WigetCreateInfo(_createCupertinoSliderWidget, false, ""),
    "cupertinoswitch" : new WigetCreateInfo(_createCupertinoSwitchWidget, false, ""),
    "cupertinotabscaffold" : new WigetCreateInfo(_createCupertinoTabScaffoldWidget, false, ""),
    "cupertinotabview" : new WigetCreateInfo(_createCupertinoTabViewWidget, false, ""),
    "cupertinothumbpainter" : new WigetCreateInfo(_createCupertinoThumbPainterWidget, false, ""),
    "fluttererrordetails" : new WigetCreateInfo(_createFlutterErrorDetailsWidget, false, ""),
    "fluttererrordetailsforpointereventdispatcher" : new WigetCreateInfo(_createFlutterErrorDetailsForPointerEventDispatcherWidget, false, ""),
    "dragdowndetails" : new WigetCreateInfo(_createDragDownDetailsWidget, false, ""),
    "dragstartdetails" : new WigetCreateInfo(_createDragStartDetailsWidget, false, ""),
    "dragupdatedetails" : new WigetCreateInfo(_createDragUpdateDetailsWidget, false, ""),
    "dragenddetails" : new WigetCreateInfo(_createDragEndDetailsWidget, false, ""),
    "pointeraddedevent" : new WigetCreateInfo(_createPointerAddedEventWidget, false, ""),
    "pointerremovedevent" : new WigetCreateInfo(_createPointerRemovedEventWidget, false, ""),
    "pointerhoverevent" : new WigetCreateInfo(_createPointerHoverEventWidget, false, ""),
    "pointerdownevent" : new WigetCreateInfo(_createPointerDownEventWidget, false, ""),
    "pointermoveevent" : new WigetCreateInfo(_createPointerMoveEventWidget, false, ""),
    "pointerupevent" : new WigetCreateInfo(_createPointerUpEventWidget, false, ""),
    "pointercancelevent" : new WigetCreateInfo(_createPointerCancelEventWidget, false, ""),
    "hittestresult" : new WigetCreateInfo(_createHitTestResultWidget, false, ""),
    "longpressgesturerecognizer" : new WigetCreateInfo(_createLongPressGestureRecognizerWidget, false, ""),
    "verticaldraggesturerecognizer" : new WigetCreateInfo(_createVerticalDragGestureRecognizerWidget, false, ""),
    "horizontaldraggesturerecognizer" : new WigetCreateInfo(_createHorizontalDragGestureRecognizerWidget, false, ""),
    "pangesturerecognizer" : new WigetCreateInfo(_createPanGestureRecognizerWidget, false, ""),
    "immediatemultidraggesturerecognizer" : new WigetCreateInfo(_createImmediateMultiDragGestureRecognizerWidget, false, ""),
    "horizontalmultidraggesturerecognizer" : new WigetCreateInfo(_createHorizontalMultiDragGestureRecognizerWidget, false, ""),
    "verticalmultidraggesturerecognizer" : new WigetCreateInfo(_createVerticalMultiDragGestureRecognizerWidget, false, ""),
    "delayedmultidraggesturerecognizer" : new WigetCreateInfo(_createDelayedMultiDragGestureRecognizerWidget, false, ""),
    "doubletapgesturerecognizer" : new WigetCreateInfo(_createDoubleTapGestureRecognizerWidget, false, ""),
    "multitapgesturerecognizer" : new WigetCreateInfo(_createMultiTapGestureRecognizerWidget, false, ""),
    "fluttererrordetailsforpointerrouter" : new WigetCreateInfo(_createFlutterErrorDetailsForPointerRouterWidget, false, ""),
    "scalestartdetails" : new WigetCreateInfo(_createScaleStartDetailsWidget, false, ""),
    "scaleupdatedetails" : new WigetCreateInfo(_createScaleUpdateDetailsWidget, false, ""),
    "scaleenddetails" : new WigetCreateInfo(_createScaleEndDetailsWidget, false, ""),
    "scalegesturerecognizer" : new WigetCreateInfo(_createScaleGestureRecognizerWidget, false, ""),
    "tapdowndetails" : new WigetCreateInfo(_createTapDownDetailsWidget, false, ""),
    "tapupdetails" : new WigetCreateInfo(_createTapUpDetailsWidget, false, ""),
    "tapgesturerecognizer" : new WigetCreateInfo(_createTapGestureRecognizerWidget, false, ""),
    "velocity" : new WigetCreateInfo(_createVelocityWidget, false, ""),
    "velocityestimate" : new WigetCreateInfo(_createVelocityEstimateWidget, false, ""),
    "aboutlisttile" : new WigetCreateInfo(_createAboutListTileWidget, false, "child"),
    "aboutdialog" : new WigetCreateInfo(_createAboutDialogWidget, false, "children[]"),
    "licensepage" : new WigetCreateInfo(_createLicensePageWidget, false, ""),
    "animatedicon" : new WigetCreateInfo(_createAnimatedIconWidget, false, ""),
    "appbar" : new WigetCreateInfo(_createAppBarWidget, false, ""),
    "sliverappbar" : new WigetCreateInfo(_createSliverAppBarWidget, false, ""),
    "materialapp" : new WigetCreateInfo(_createMaterialAppWidget, false, ""),
    "materialpointarctween" : new WigetCreateInfo(_createMaterialPointArcTweenWidget, false, ""),
    "materialrectarctween" : new WigetCreateInfo(_createMaterialRectArcTweenWidget, false, ""),
    "materialrectcenterarctween" : new WigetCreateInfo(_createMaterialRectCenterArcTweenWidget, false, ""),
    "backbuttonicon" : new WigetCreateInfo(_createBackButtonIconWidget, false, ""),
    "backbutton" : new WigetCreateInfo(_createBackButtonWidget, false, ""),
    "closebutton" : new WigetCreateInfo(_createCloseButtonWidget, false, ""),
    "bottomappbar" : new WigetCreateInfo(_createBottomAppBarWidget, false, "child"),
    "bottomnavigationbar" : new WigetCreateInfo(_createBottomNavigationBarWidget, false, ""),
    "bottomsheet" : new WigetCreateInfo(_createBottomSheetWidget, false, ""),
    "buttonbar" : new WigetCreateInfo(_createButtonBarWidget, false, "children[]"),
    "buttontheme" : new WigetCreateInfo(_createButtonThemeWidget, false, "child"),
    "buttontheme.frombuttonthemedata" : new WigetCreateInfo(_createButtonTheme_fromButtonThemeDataWidget, false, "child"),
    "buttonthemedata" : new WigetCreateInfo(_createButtonThemeDataWidget, false, ""),
    "rawmaterialbutton" : new WigetCreateInfo(_createRawMaterialButtonWidget, false, "child"),
    "materialbutton" : new WigetCreateInfo(_createMaterialButtonWidget, false, "child"),
    "card" : new WigetCreateInfo(_createCardWidget, false, "child"),
    "checkboxlisttile" : new WigetCreateInfo(_createCheckboxListTileWidget, false, ""),
    "checkbox" : new WigetCreateInfo(_createCheckboxWidget, false, ""),
    "chiptheme" : new WigetCreateInfo(_createChipThemeWidget, false, "child"),
    "chipthemedata" : new WigetCreateInfo(_createChipThemeDataWidget, false, ""),
    "chipthemedata.fromdefaults" : new WigetCreateInfo(_createChipThemeData_fromDefaultsWidget, false, ""),
    "chip" : new WigetCreateInfo(_createChipWidget, false, ""),
    "inputchip" : new WigetCreateInfo(_createInputChipWidget, false, ""),
    "choicechip" : new WigetCreateInfo(_createChoiceChipWidget, false, ""),
    "filterchip" : new WigetCreateInfo(_createFilterChipWidget, false, ""),
    "actionchip" : new WigetCreateInfo(_createActionChipWidget, false, ""),
    "rawchip" : new WigetCreateInfo(_createRawChipWidget, false, ""),
    "circleavatar" : new WigetCreateInfo(_createCircleAvatarWidget, false, "child"),
    "datacolumn" : new WigetCreateInfo(_createDataColumnWidget, false, ""),
    "datarow" : new WigetCreateInfo(_createDataRowWidget, false, ""),
    "datarow.byindex" : new WigetCreateInfo(_createDataRow_byIndexWidget, false, ""),
    "datacell" : new WigetCreateInfo(_createDataCellWidget, true, ""),
    "datatable" : new WigetCreateInfo(_createDataTableWidget, false, ""),
    "tablerowinkwell" : new WigetCreateInfo(_createTableRowInkWellWidget, false, "child"),
    "daypicker" : new WigetCreateInfo(_createDayPickerWidget, false, ""),
    "monthpicker" : new WigetCreateInfo(_createMonthPickerWidget, false, ""),
    "yearpicker" : new WigetCreateInfo(_createYearPickerWidget, false, ""),
    "dialog" : new WigetCreateInfo(_createDialogWidget, false, "child"),
    "alertdialog" : new WigetCreateInfo(_createAlertDialogWidget, false, ""),
    "simpledialogoption" : new WigetCreateInfo(_createSimpleDialogOptionWidget, false, "child"),
    "simpledialog" : new WigetCreateInfo(_createSimpleDialogWidget, false, "children[]"),
    "divider" : new WigetCreateInfo(_createDividerWidget, false, ""),
    "drawerheader" : new WigetCreateInfo(_createDrawerHeaderWidget, false, "child"),
    "drawer" : new WigetCreateInfo(_createDrawerWidget, false, "child"),
    "drawercontroller" : new WigetCreateInfo(_createDrawerControllerWidget, false, "child"),
    "dropdownmenuitem" : new WigetCreateInfo(_createDropdownMenuItemWidget, false, "child"),
    "dropdownbuttonhideunderline" : new WigetCreateInfo(_createDropdownButtonHideUnderlineWidget, false, "child"),
    "dropdownbutton" : new WigetCreateInfo(_createDropdownButtonWidget, false, ""),
    "expandicon" : new WigetCreateInfo(_createExpandIconWidget, false, ""),
    "expansionpanel" : new WigetCreateInfo(_createExpansionPanelWidget, false, ""),
    "expansionpanellist" : new WigetCreateInfo(_createExpansionPanelListWidget, false, "children[]"),
    "expansiontile" : new WigetCreateInfo(_createExpansionTileWidget, false, "children[]"),
    "flatbutton" : new WigetCreateInfo(_createFlatButtonWidget, false, "child"),
    "flatbutton.icon" : new WigetCreateInfo(_createFlatButton_iconWidget, false, ""),
    "flexiblespacebar" : new WigetCreateInfo(_createFlexibleSpaceBarWidget, false, ""),
    "floatingactionbutton" : new WigetCreateInfo(_createFloatingActionButtonWidget, false, "child"),
    "floatingactionbutton.extended" : new WigetCreateInfo(_createFloatingActionButton_extendedWidget, false, ""),
    "flutterlogo" : new WigetCreateInfo(_createFlutterLogoWidget, false, ""),
    "gridtilebar" : new WigetCreateInfo(_createGridTileBarWidget, false, ""),
    "gridtile" : new WigetCreateInfo(_createGridTileWidget, false, "child"),
    "iconbutton" : new WigetCreateInfo(_createIconButtonWidget, false, ""),
    "ink" : new WigetCreateInfo(_createInkWidget, false, "child"),
    "ink.image" : new WigetCreateInfo(_createInk_imageWidget, false, "child"),
    "inkdecoration" : new WigetCreateInfo(_createInkDecorationWidget, false, ""),
    "inkhighlight" : new WigetCreateInfo(_createInkHighlightWidget, false, ""),
    "inkripple" : new WigetCreateInfo(_createInkRippleWidget, false, ""),
    "inksplash" : new WigetCreateInfo(_createInkSplashWidget, false, ""),
    "inkresponse" : new WigetCreateInfo(_createInkResponseWidget, false, "child"),
    "inkwell" : new WigetCreateInfo(_createInkWellWidget, false, "child"),
    "underlineinputborder" : new WigetCreateInfo(_createUnderlineInputBorderWidget, false, ""),
    "outlineinputborder" : new WigetCreateInfo(_createOutlineInputBorderWidget, false, ""),
    "inputdecorator" : new WigetCreateInfo(_createInputDecoratorWidget, false, "child"),
    "inputdecoration" : new WigetCreateInfo(_createInputDecorationWidget, false, ""),
    "inputdecoration.collapsed" : new WigetCreateInfo(_createInputDecoration_collapsedWidget, false, ""),
    "inputdecorationtheme" : new WigetCreateInfo(_createInputDecorationThemeWidget, false, ""),
    "listtiletheme" : new WigetCreateInfo(_createListTileThemeWidget, false, "child"),
    "listtile" : new WigetCreateInfo(_createListTileWidget, false, ""),
    "material" : new WigetCreateInfo(_createMaterialWidget, false, "child"),
    "shapebordertween" : new WigetCreateInfo(_createShapeBorderTweenWidget, false, ""),
    "materialslice" : new WigetCreateInfo(_createMaterialSliceWidget, false, "child"),
    "materialgap" : new WigetCreateInfo(_createMaterialGapWidget, false, ""),
    "mergeablematerial" : new WigetCreateInfo(_createMergeableMaterialWidget, false, "children[]"),
    "outlinebutton" : new WigetCreateInfo(_createOutlineButtonWidget, false, "child"),
    "outlinebutton.icon" : new WigetCreateInfo(_createOutlineButton_iconWidget, false, ""),
    "materialpageroute" : new WigetCreateInfo(_createMaterialPageRouteWidget, false, ""),
    "paginateddatatable" : new WigetCreateInfo(_createPaginatedDataTableWidget, false, ""),
    "popupmenudivider" : new WigetCreateInfo(_createPopupMenuDividerWidget, false, ""),
    "popupmenuitem" : new WigetCreateInfo(_createPopupMenuItemWidget, false, "child"),
    "checkedpopupmenuitem" : new WigetCreateInfo(_createCheckedPopupMenuItemWidget, false, "child"),
    "popupmenubutton" : new WigetCreateInfo(_createPopupMenuButtonWidget, false, "child"),
    "linearprogressindicator" : new WigetCreateInfo(_createLinearProgressIndicatorWidget, false, ""),
    "circularprogressindicator" : new WigetCreateInfo(_createCircularProgressIndicatorWidget, false, ""),
    "refreshprogressindicator" : new WigetCreateInfo(_createRefreshProgressIndicatorWidget, false, ""),
    "radiolisttile" : new WigetCreateInfo(_createRadioListTileWidget, false, ""),
    "radio" : new WigetCreateInfo(_createRadioWidget, false, ""),
    "raisedbutton" : new WigetCreateInfo(_createRaisedButtonWidget, false, "child"),
    "raisedbutton.icon" : new WigetCreateInfo(_createRaisedButton_iconWidget, false, ""),
    "refreshindicator" : new WigetCreateInfo(_createRefreshIndicatorWidget, false, "child"),
    "scaffoldprelayoutgeometry" : new WigetCreateInfo(_createScaffoldPrelayoutGeometryWidget, false, ""),
    "scaffoldgeometry" : new WigetCreateInfo(_createScaffoldGeometryWidget, false, ""),
    "scaffold" : new WigetCreateInfo(_createScaffoldWidget, false, ""),
    "scrollbar" : new WigetCreateInfo(_createScrollbarWidget, false, "child"),
    "slidertheme" : new WigetCreateInfo(_createSliderThemeWidget, false, "child"),
    "sliderthemedata" : new WigetCreateInfo(_createSliderThemeDataWidget, false, ""),
    "sliderthemedata.fromprimarycolors" : new WigetCreateInfo(_createSliderThemeData_fromPrimaryColorsWidget, false, ""),
    "slider" : new WigetCreateInfo(_createSliderWidget, false, ""),
    "snackbaraction" : new WigetCreateInfo(_createSnackBarActionWidget, false, ""),
    "snackbar" : new WigetCreateInfo(_createSnackBarWidget, false, ""),
    "step" : new WigetCreateInfo(_createStepWidget, false, ""),
    "stepper" : new WigetCreateInfo(_createStepperWidget, false, ""),
    "switchlisttile" : new WigetCreateInfo(_createSwitchListTileWidget, false, ""),
    "switch" : new WigetCreateInfo(_createSwitchWidget, false, ""),
    "tabcontroller" : new WigetCreateInfo(_createTabControllerWidget, false, ""),
    "defaulttabcontroller" : new WigetCreateInfo(_createDefaultTabControllerWidget, false, "child"),
    "underlinetabindicator" : new WigetCreateInfo(_createUnderlineTabIndicatorWidget, false, ""),
    "tab" : new WigetCreateInfo(_createTabWidget, false, "child"),
    "tabbar" : new WigetCreateInfo(_createTabBarWidget, false, ""),
    "tabbarview" : new WigetCreateInfo(_createTabBarViewWidget, false, "children[]"),
    "tabpageselectorindicator" : new WigetCreateInfo(_createTabPageSelectorIndicatorWidget, false, ""),
    "tabpageselector" : new WigetCreateInfo(_createTabPageSelectorWidget, false, ""),
    "textfield" : new WigetCreateInfo(_createTextFieldWidget, false, ""),
    "textformfield" : new WigetCreateInfo(_createTextFormFieldWidget, false, ""),
    "themedata" : new WigetCreateInfo(_createThemeDataWidget, false, ""),
    "theme" : new WigetCreateInfo(_createThemeWidget, false, "child"),
    "themedatatween" : new WigetCreateInfo(_createThemeDataTweenWidget, false, ""),
    "animatedtheme" : new WigetCreateInfo(_createAnimatedThemeWidget, false, "child"),
    "timeofday" : new WigetCreateInfo(_createTimeOfDayWidget, false, ""),
    "tooltip" : new WigetCreateInfo(_createTooltipWidget, false, "child"),
    "texttheme" : new WigetCreateInfo(_createTextThemeWidget, false, ""),
    "typography" : new WigetCreateInfo(_createTypographyWidget, false, ""),
    "useraccountsdrawerheader" : new WigetCreateInfo(_createUserAccountsDrawerHeaderWidget, false, ""),
    "beveledrectangleborder" : new WigetCreateInfo(_createBeveledRectangleBorderWidget, false, ""),
    "borderside" : new WigetCreateInfo(_createBorderSideWidget, false, ""),
    "border" : new WigetCreateInfo(_createBorderWidget, false, ""),
    "borderdirectional" : new WigetCreateInfo(_createBorderDirectionalWidget, false, ""),
    "boxdecoration" : new WigetCreateInfo(_createBoxDecorationWidget, false, ""),
    "boxshadow" : new WigetCreateInfo(_createBoxShadowWidget, false, ""),
    "circleborder" : new WigetCreateInfo(_createCircleBorderWidget, false, ""),
    "decorationimage" : new WigetCreateInfo(_createDecorationImageWidget, false, ""),
    "flutterlogodecoration" : new WigetCreateInfo(_createFlutterLogoDecorationWidget, false, ""),
    "lineargradient" : new WigetCreateInfo(_createLinearGradientWidget, false, ""),
    "radialgradient" : new WigetCreateInfo(_createRadialGradientWidget, false, ""),
    "imageconfiguration" : new WigetCreateInfo(_createImageConfigurationWidget, false, ""),
    "assetbundleimagekey" : new WigetCreateInfo(_createAssetBundleImageKeyWidget, false, ""),
    "networkimage" : new WigetCreateInfo(_createNetworkImageWidget, true, ""),
    "fileimage" : new WigetCreateInfo(_createFileImageWidget, true, ""),
    "memoryimage" : new WigetCreateInfo(_createMemoryImageWidget, true, ""),
    "exactassetimage" : new WigetCreateInfo(_createExactAssetImageWidget, true, ""),
    "assetimage" : new WigetCreateInfo(_createAssetImageWidget, true, ""),
    "imageinfo" : new WigetCreateInfo(_createImageInfoWidget, false, ""),
    "multiframeimagestreamcompleter" : new WigetCreateInfo(_createMultiFrameImageStreamCompleterWidget, false, ""),
    "roundedrectangleborder" : new WigetCreateInfo(_createRoundedRectangleBorderWidget, false, ""),
    "shapedecoration" : new WigetCreateInfo(_createShapeDecorationWidget, false, ""),
    "textpainter" : new WigetCreateInfo(_createTextPainterWidget, false, ""),
    "textspan" : new WigetCreateInfo(_createTextSpanWidget, false, "children[]"),
    "textstyle" : new WigetCreateInfo(_createTextStyleWidget, false, ""),
    "clampedsimulation" : new WigetCreateInfo(_createClampedSimulationWidget, true, ""),
    "springdescription" : new WigetCreateInfo(_createSpringDescriptionWidget, false, ""),
    "springdescription.withdampingratio" : new WigetCreateInfo(_createSpringDescription_withDampingRatioWidget, false, ""),
    "tolerance" : new WigetCreateInfo(_createToleranceWidget, false, ""),
    "renderanimatedsize" : new WigetCreateInfo(_createRenderAnimatedSizeWidget, false, "child"),
    "renderingflutterbinding" : new WigetCreateInfo(_createRenderingFlutterBindingWidget, false, ""),
    "boxconstraints" : new WigetCreateInfo(_createBoxConstraintsWidget, false, ""),
    "rendercustommultichildlayoutbox" : new WigetCreateInfo(_createRenderCustomMultiChildLayoutBoxWidget, false, "children[]"),
    "custompaintersemantics" : new WigetCreateInfo(_createCustomPainterSemanticsWidget, false, ""),
    "rendercustompaint" : new WigetCreateInfo(_createRenderCustomPaintWidget, false, "child"),
    "rendereditable" : new WigetCreateInfo(_createRenderEditableWidget, false, ""),
    "renderflex" : new WigetCreateInfo(_createRenderFlexWidget, false, "children[]"),
    "renderflow" : new WigetCreateInfo(_createRenderFlowWidget, false, "children[]"),
    "renderimage" : new WigetCreateInfo(_createRenderImageWidget, false, ""),
    "texturelayer" : new WigetCreateInfo(_createTextureLayerWidget, false, ""),
    "performanceoverlaylayer" : new WigetCreateInfo(_createPerformanceOverlayLayerWidget, false, ""),
    "offsetlayer" : new WigetCreateInfo(_createOffsetLayerWidget, false, ""),
    "cliprectlayer" : new WigetCreateInfo(_createClipRectLayerWidget, false, ""),
    "cliprrectlayer" : new WigetCreateInfo(_createClipRRectLayerWidget, false, ""),
    "clippathlayer" : new WigetCreateInfo(_createClipPathLayerWidget, false, ""),
    "transformlayer" : new WigetCreateInfo(_createTransformLayerWidget, false, ""),
    "opacitylayer" : new WigetCreateInfo(_createOpacityLayerWidget, false, ""),
    "shadermasklayer" : new WigetCreateInfo(_createShaderMaskLayerWidget, false, ""),
    "backdropfilterlayer" : new WigetCreateInfo(_createBackdropFilterLayerWidget, false, ""),
    "physicalmodellayer" : new WigetCreateInfo(_createPhysicalModelLayerWidget, false, ""),
    "leaderlayer" : new WigetCreateInfo(_createLeaderLayerWidget, false, ""),
    "followerlayer" : new WigetCreateInfo(_createFollowerLayerWidget, false, ""),
    "renderlistbody" : new WigetCreateInfo(_createRenderListBodyWidget, false, "children[]"),
    "renderlistwheelviewport" : new WigetCreateInfo(_createRenderListWheelViewportWidget, false, "children[]"),
    "pipelineowner" : new WigetCreateInfo(_createPipelineOwnerWidget, false, ""),
    "fluttererrordetailsforrendering" : new WigetCreateInfo(_createFlutterErrorDetailsForRenderingWidget, false, ""),
    "renderperformanceoverlay" : new WigetCreateInfo(_createRenderPerformanceOverlayWidget, false, ""),
    "renderconstrainedbox" : new WigetCreateInfo(_createRenderConstrainedBoxWidget, false, "child"),
    "renderlimitedbox" : new WigetCreateInfo(_createRenderLimitedBoxWidget, false, "child"),
    "renderaspectratio" : new WigetCreateInfo(_createRenderAspectRatioWidget, false, "child"),
    "renderintrinsicwidth" : new WigetCreateInfo(_createRenderIntrinsicWidthWidget, false, "child"),
    "renderintrinsicheight" : new WigetCreateInfo(_createRenderIntrinsicHeightWidget, false, "child"),
    "renderopacity" : new WigetCreateInfo(_createRenderOpacityWidget, false, "child"),
    "renderanimatedopacity" : new WigetCreateInfo(_createRenderAnimatedOpacityWidget, false, "child"),
    "rendershadermask" : new WigetCreateInfo(_createRenderShaderMaskWidget, false, "child"),
    "renderbackdropfilter" : new WigetCreateInfo(_createRenderBackdropFilterWidget, false, "child"),
    "shapeborderclipper" : new WigetCreateInfo(_createShapeBorderClipperWidget, false, ""),
    "rendercliprect" : new WigetCreateInfo(_createRenderClipRectWidget, false, "child"),
    "rendercliprrect" : new WigetCreateInfo(_createRenderClipRRectWidget, false, "child"),
    "renderclipoval" : new WigetCreateInfo(_createRenderClipOvalWidget, false, "child"),
    "renderclippath" : new WigetCreateInfo(_createRenderClipPathWidget, false, "child"),
    "renderphysicalmodel" : new WigetCreateInfo(_createRenderPhysicalModelWidget, false, "child"),
    "renderphysicalshape" : new WigetCreateInfo(_createRenderPhysicalShapeWidget, false, "child"),
    "renderdecoratedbox" : new WigetCreateInfo(_createRenderDecoratedBoxWidget, false, "child"),
    "rendertransform" : new WigetCreateInfo(_createRenderTransformWidget, false, "child"),
    "renderfittedbox" : new WigetCreateInfo(_createRenderFittedBoxWidget, false, "child"),
    "renderfractionaltranslation" : new WigetCreateInfo(_createRenderFractionalTranslationWidget, false, "child"),
    "renderpointerlistener" : new WigetCreateInfo(_createRenderPointerListenerWidget, false, "child"),
    "renderrepaintboundary" : new WigetCreateInfo(_createRenderRepaintBoundaryWidget, false, "child"),
    "renderignorepointer" : new WigetCreateInfo(_createRenderIgnorePointerWidget, false, "child"),
    "renderoffstage" : new WigetCreateInfo(_createRenderOffstageWidget, false, "child"),
    "renderabsorbpointer" : new WigetCreateInfo(_createRenderAbsorbPointerWidget, false, "child"),
    "rendermetadata" : new WigetCreateInfo(_createRenderMetaDataWidget, false, "child"),
    "rendersemanticsgesturehandler" : new WigetCreateInfo(_createRenderSemanticsGestureHandlerWidget, false, "child"),
    "rendersemanticsannotations" : new WigetCreateInfo(_createRenderSemanticsAnnotationsWidget, false, "child"),
    "renderblocksemantics" : new WigetCreateInfo(_createRenderBlockSemanticsWidget, false, "child"),
    "rendermergesemantics" : new WigetCreateInfo(_createRenderMergeSemanticsWidget, false, "child"),
    "renderexcludesemantics" : new WigetCreateInfo(_createRenderExcludeSemanticsWidget, false, "child"),
    "renderleaderlayer" : new WigetCreateInfo(_createRenderLeaderLayerWidget, false, "child"),
    "renderfollowerlayer" : new WigetCreateInfo(_createRenderFollowerLayerWidget, false, "child"),
    "renderrotatedbox" : new WigetCreateInfo(_createRenderRotatedBoxWidget, false, "child"),
    "renderpadding" : new WigetCreateInfo(_createRenderPaddingWidget, false, "child"),
    "renderpositionedbox" : new WigetCreateInfo(_createRenderPositionedBoxWidget, false, "child"),
    "renderconstrainedoverflowbox" : new WigetCreateInfo(_createRenderConstrainedOverflowBoxWidget, false, "child"),
    "renderunconstrainedbox" : new WigetCreateInfo(_createRenderUnconstrainedBoxWidget, false, "child"),
    "rendersizedoverflowbox" : new WigetCreateInfo(_createRenderSizedOverflowBoxWidget, false, "child"),
    "renderfractionallysizedoverflowbox" : new WigetCreateInfo(_createRenderFractionallySizedOverflowBoxWidget, false, "child"),
    "rendercustomsinglechildlayoutbox" : new WigetCreateInfo(_createRenderCustomSingleChildLayoutBoxWidget, false, "child"),
    "renderbaseline" : new WigetCreateInfo(_createRenderBaselineWidget, false, "child"),
    "rendersliverfillviewport" : new WigetCreateInfo(_createRenderSliverFillViewportWidget, false, ""),
    "rendersliverfillremaining" : new WigetCreateInfo(_createRenderSliverFillRemainingWidget, false, "child"),
    "rendersliverfixedextentlist" : new WigetCreateInfo(_createRenderSliverFixedExtentListWidget, false, ""),
    "slivergridgeometry" : new WigetCreateInfo(_createSliverGridGeometryWidget, false, ""),
    "slivergridregulartilelayout" : new WigetCreateInfo(_createSliverGridRegularTileLayoutWidget, false, ""),
    "slivergriddelegatewithfixedcrossaxiscount" : new WigetCreateInfo(_createSliverGridDelegateWithFixedCrossAxisCountWidget, false, ""),
    "slivergriddelegatewithmaxcrossaxisextent" : new WigetCreateInfo(_createSliverGridDelegateWithMaxCrossAxisExtentWidget, false, ""),
    "renderslivergrid" : new WigetCreateInfo(_createRenderSliverGridWidget, false, ""),
    "rendersliverlist" : new WigetCreateInfo(_createRenderSliverListWidget, false, ""),
    "rendersliverpadding" : new WigetCreateInfo(_createRenderSliverPaddingWidget, false, "child"),
    "floatingheadersnapconfiguration" : new WigetCreateInfo(_createFloatingHeaderSnapConfigurationWidget, false, ""),
    "sliverconstraints" : new WigetCreateInfo(_createSliverConstraintsWidget, false, ""),
    "slivergeometry" : new WigetCreateInfo(_createSliverGeometryWidget, false, ""),
    "renderslivertoboxadapter" : new WigetCreateInfo(_createRenderSliverToBoxAdapterWidget, false, "child"),
    "renderstack" : new WigetCreateInfo(_createRenderStackWidget, false, "children[]"),
    "renderindexedstack" : new WigetCreateInfo(_createRenderIndexedStackWidget, false, "children[]"),
    "tableborder" : new WigetCreateInfo(_createTableBorderWidget, false, ""),
    "tableborder.all" : new WigetCreateInfo(_createTableBorder_allWidget, false, ""),
    "intrinsiccolumnwidth" : new WigetCreateInfo(_createIntrinsicColumnWidthWidget, false, ""),
    "rendertable" : new WigetCreateInfo(_createRenderTableWidget, false, "children[]"),
    "texturebox" : new WigetCreateInfo(_createTextureBoxWidget, false, ""),
    "fractionaloffsettween" : new WigetCreateInfo(_createFractionalOffsetTweenWidget, false, ""),
    "alignmenttween" : new WigetCreateInfo(_createAlignmentTweenWidget, false, ""),
    "alignmentgeometrytween" : new WigetCreateInfo(_createAlignmentGeometryTweenWidget, false, ""),
    "viewconfiguration" : new WigetCreateInfo(_createViewConfigurationWidget, false, ""),
    "renderview" : new WigetCreateInfo(_createRenderViewWidget, false, "child"),
    "renderviewport" : new WigetCreateInfo(_createRenderViewportWidget, false, "children[]"),
    "rendershrinkwrappingviewport" : new WigetCreateInfo(_createRenderShrinkWrappingViewportWidget, false, "children[]"),
    "renderwrap" : new WigetCreateInfo(_createRenderWrapWidget, false, "children[]"),
    "ticker" : new WigetCreateInfo(_createTickerWidget, true, ""),
    "semanticsdata" : new WigetCreateInfo(_createSemanticsDataWidget, false, ""),
    "semanticsproperties" : new WigetCreateInfo(_createSemanticsPropertiesWidget, false, ""),
    "semanticsnode" : new WigetCreateInfo(_createSemanticsNodeWidget, false, ""),
    "semanticsnode.root" : new WigetCreateInfo(_createSemanticsNode_rootWidget, false, ""),
    "ordinalsortkey" : new WigetCreateInfo(_createOrdinalSortKeyWidget, true, ""),
    "clipboarddata" : new WigetCreateInfo(_createClipboardDataWidget, false, ""),
    "platformexception" : new WigetCreateInfo(_createPlatformExceptionWidget, false, ""),
    "rawkeyeventdataandroid" : new WigetCreateInfo(_createRawKeyEventDataAndroidWidget, false, ""),
    "rawkeyeventdatafuchsia" : new WigetCreateInfo(_createRawKeyEventDataFuchsiaWidget, false, ""),
    "rawkeydownevent" : new WigetCreateInfo(_createRawKeyDownEventWidget, false, ""),
    "rawkeyupevent" : new WigetCreateInfo(_createRawKeyUpEventWidget, false, ""),
    "applicationswitcherdescription" : new WigetCreateInfo(_createApplicationSwitcherDescriptionWidget, false, ""),
    "systemuioverlaystyle" : new WigetCreateInfo(_createSystemUiOverlayStyleWidget, false, ""),
    "textrange" : new WigetCreateInfo(_createTextRangeWidget, false, ""),
    "textselection" : new WigetCreateInfo(_createTextSelectionWidget, false, ""),
    "textselection.collapsed" : new WigetCreateInfo(_createTextSelection_collapsedWidget, false, ""),
    "blacklistingtextinputformatter" : new WigetCreateInfo(_createBlacklistingTextInputFormatterWidget, true, ""),
    "textinputconfiguration" : new WigetCreateInfo(_createTextInputConfigurationWidget, false, ""),
    "texteditingvalue" : new WigetCreateInfo(_createTextEditingValueWidget, false, ""),
    "animatedcrossfade" : new WigetCreateInfo(_createAnimatedCrossFadeWidget, false, ""),
    "animatedlist" : new WigetCreateInfo(_createAnimatedListWidget, false, ""),
    "animatedsize" : new WigetCreateInfo(_createAnimatedSizeWidget, false, "child"),
    "animatedswitcher" : new WigetCreateInfo(_createAnimatedSwitcherWidget, false, "child"),
    "widgetsapp" : new WigetCreateInfo(_createWidgetsAppWidget, false, ""),
    "streambuilder" : new WigetCreateInfo(_createStreamBuilderWidget, false, ""),
    "futurebuilder" : new WigetCreateInfo(_createFutureBuilderWidget, false, ""),
    "automatickeepalive" : new WigetCreateInfo(_createAutomaticKeepAliveWidget, false, "child"),
    "bannerpainter" : new WigetCreateInfo(_createBannerPainterWidget, false, ""),
    "banner" : new WigetCreateInfo(_createBannerWidget, false, "child"),
    "checkedmodebanner" : new WigetCreateInfo(_createCheckedModeBannerWidget, false, "child"),
    "directionality" : new WigetCreateInfo(_createDirectionalityWidget, false, "child"),
    "opacity" : new WigetCreateInfo(_createOpacityWidget, false, "child"),
    "shadermask" : new WigetCreateInfo(_createShaderMaskWidget, false, "child"),
    "backdropfilter" : new WigetCreateInfo(_createBackdropFilterWidget, false, "child"),
    "custompaint" : new WigetCreateInfo(_createCustomPaintWidget, false, "child"),
    "cliprect" : new WigetCreateInfo(_createClipRectWidget, false, "child"),
    "cliprrect" : new WigetCreateInfo(_createClipRRectWidget, false, "child"),
    "clipoval" : new WigetCreateInfo(_createClipOvalWidget, false, "child"),
    "clippath" : new WigetCreateInfo(_createClipPathWidget, false, "child"),
    "physicalmodel" : new WigetCreateInfo(_createPhysicalModelWidget, false, "child"),
    "physicalshape" : new WigetCreateInfo(_createPhysicalShapeWidget, false, "child"),
    "transform" : new WigetCreateInfo(_createTransformWidget, false, "child"),
    "transform.rotate" : new WigetCreateInfo(_createTransform_rotateWidget, false, "child"),
    "compositedtransformtarget" : new WigetCreateInfo(_createCompositedTransformTargetWidget, false, "child"),
    "compositedtransformfollower" : new WigetCreateInfo(_createCompositedTransformFollowerWidget, false, "child"),
    "fittedbox" : new WigetCreateInfo(_createFittedBoxWidget, false, "child"),
    "fractionaltranslation" : new WigetCreateInfo(_createFractionalTranslationWidget, false, "child"),
    "rotatedbox" : new WigetCreateInfo(_createRotatedBoxWidget, false, "child"),
    "padding" : new WigetCreateInfo(_createPaddingWidget, false, "child"),
    "align" : new WigetCreateInfo(_createAlignWidget, false, "child"),
    "center" : new WigetCreateInfo(_createCenterWidget, false, "child"),
    "customsinglechildlayout" : new WigetCreateInfo(_createCustomSingleChildLayoutWidget, false, "child"),
    "layoutid" : new WigetCreateInfo(_createLayoutIdWidget, false, "child"),
    "custommultichildlayout" : new WigetCreateInfo(_createCustomMultiChildLayoutWidget, false, "children[]"),
    "sizedbox" : new WigetCreateInfo(_createSizedBoxWidget, false, "child"),
    "sizedbox.expand" : new WigetCreateInfo(_createSizedBox_expandWidget, false, "child"),
    "constrainedbox" : new WigetCreateInfo(_createConstrainedBoxWidget, false, "child"),
    "unconstrainedbox" : new WigetCreateInfo(_createUnconstrainedBoxWidget, false, "child"),
    "fractionallysizedbox" : new WigetCreateInfo(_createFractionallySizedBoxWidget, false, "child"),
    "limitedbox" : new WigetCreateInfo(_createLimitedBoxWidget, false, "child"),
    "overflowbox" : new WigetCreateInfo(_createOverflowBoxWidget, false, "child"),
    "sizedoverflowbox" : new WigetCreateInfo(_createSizedOverflowBoxWidget, false, "child"),
    "offstage" : new WigetCreateInfo(_createOffstageWidget, false, "child"),
    "aspectratio" : new WigetCreateInfo(_createAspectRatioWidget, false, "child"),
    "intrinsicwidth" : new WigetCreateInfo(_createIntrinsicWidthWidget, false, "child"),
    "intrinsicheight" : new WigetCreateInfo(_createIntrinsicHeightWidget, false, "child"),
    "baseline" : new WigetCreateInfo(_createBaselineWidget, false, "child"),
    "slivertoboxadapter" : new WigetCreateInfo(_createSliverToBoxAdapterWidget, false, "child"),
    "sliverpadding" : new WigetCreateInfo(_createSliverPaddingWidget, false, ""),
    "listbody" : new WigetCreateInfo(_createListBodyWidget, false, "children[]"),
    "stack" : new WigetCreateInfo(_createStackWidget, false, "children[]"),
    "indexedstack" : new WigetCreateInfo(_createIndexedStackWidget, false, "children[]"),
    "positioned" : new WigetCreateInfo(_createPositionedWidget, false, "child"),
    "positioned.fromrect" : new WigetCreateInfo(_createPositioned_fromRectWidget, false, "child"),
    "positioneddirectional" : new WigetCreateInfo(_createPositionedDirectionalWidget, false, "child"),
    "flex" : new WigetCreateInfo(_createFlexWidget, false, "children[]"),
    "row" : new WigetCreateInfo(_createRowWidget, false, "children[]"),
    "column" : new WigetCreateInfo(_createColumnWidget, false, "children[]"),
    "flexible" : new WigetCreateInfo(_createFlexibleWidget, false, "child"),
    "expanded" : new WigetCreateInfo(_createExpandedWidget, false, "child"),
    "wrap" : new WigetCreateInfo(_createWrapWidget, false, "children[]"),
    "flow" : new WigetCreateInfo(_createFlowWidget, false, "children[]"),
    "flow.unwrapped" : new WigetCreateInfo(_createFlow_unwrappedWidget, false, "children[]"),
    "richtext" : new WigetCreateInfo(_createRichTextWidget, false, ""),
    "rawimage" : new WigetCreateInfo(_createRawImageWidget, false, ""),
    "defaultassetbundle" : new WigetCreateInfo(_createDefaultAssetBundleWidget, false, "child"),
    "widgettorenderboxadapter" : new WigetCreateInfo(_createWidgetToRenderBoxAdapterWidget, false, ""),
    "listener" : new WigetCreateInfo(_createListenerWidget, false, "child"),
    "repaintboundary" : new WigetCreateInfo(_createRepaintBoundaryWidget, false, "child"),
    "ignorepointer" : new WigetCreateInfo(_createIgnorePointerWidget, false, "child"),
    "absorbpointer" : new WigetCreateInfo(_createAbsorbPointerWidget, false, "child"),
    "metadata" : new WigetCreateInfo(_createMetaDataWidget, false, "child"),
    "semantics" : new WigetCreateInfo(_createSemanticsWidget, false, "child"),
    "semantics.fromproperties" : new WigetCreateInfo(_createSemantics_fromPropertiesWidget, false, "child"),
    "mergesemantics" : new WigetCreateInfo(_createMergeSemanticsWidget, false, "child"),
    "blocksemantics" : new WigetCreateInfo(_createBlockSemanticsWidget, false, "child"),
    "excludesemantics" : new WigetCreateInfo(_createExcludeSemanticsWidget, false, "child"),
    "keyedsubtree" : new WigetCreateInfo(_createKeyedSubtreeWidget, false, "child"),
    "builder" : new WigetCreateInfo(_createBuilderWidget, false, ""),
    "statefulbuilder" : new WigetCreateInfo(_createStatefulBuilderWidget, false, ""),
    "renderobjecttowidgetadapter" : new WigetCreateInfo(_createRenderObjectToWidgetAdapterWidget, false, "child"),
    "bottomnavigationbaritem" : new WigetCreateInfo(_createBottomNavigationBarItemWidget, false, ""),
    "decoratedbox" : new WigetCreateInfo(_createDecoratedBoxWidget, false, "child"),
    "container" : new WigetCreateInfo(_createContainerWidget, false, "child"),
    "dismissible" : new WigetCreateInfo(_createDismissibleWidget, false, "child"),
    "draggable" : new WigetCreateInfo(_createDraggableWidget, false, "child"),
    "longpressdraggable" : new WigetCreateInfo(_createLongPressDraggableWidget, false, "child"),
    "dragtarget" : new WigetCreateInfo(_createDragTargetWidget, false, ""),
    "texteditingcontroller" : new WigetCreateInfo(_createTextEditingControllerWidget, false, ""),
    "editabletext" : new WigetCreateInfo(_createEditableTextWidget, false, ""),
    "fadeinimage" : new WigetCreateInfo(_createFadeInImageWidget, false, ""),
    "fadeinimage.memorynetwork" : new WigetCreateInfo(_createFadeInImage_memoryNetworkWidget, false, ""),
    "focusscope" : new WigetCreateInfo(_createFocusScopeWidget, false, "child"),
    "form" : new WigetCreateInfo(_createFormWidget, false, "child"),
    "formfield" : new WigetCreateInfo(_createFormFieldWidget, false, ""),
    "buildowner" : new WigetCreateInfo(_createBuildOwnerWidget, false, ""),
    "gesturedetector" : new WigetCreateInfo(_createGestureDetectorWidget, false, "child"),
    "rawgesturedetector" : new WigetCreateInfo(_createRawGestureDetectorWidget, false, "child"),
    "gridpaper" : new WigetCreateInfo(_createGridPaperWidget, false, "child"),
    "hero" : new WigetCreateInfo(_createHeroWidget, false, "child"),
    "herocontroller" : new WigetCreateInfo(_createHeroControllerWidget, false, ""),
    "icondata" : new WigetCreateInfo(_createIconDataWidget, true, ""),
    "iconthemedata" : new WigetCreateInfo(_createIconThemeDataWidget, false, ""),
    "icontheme" : new WigetCreateInfo(_createIconThemeWidget, false, "child"),
    "icon" : new WigetCreateInfo(_createIconWidget, true, ""),
    "imageicon" : new WigetCreateInfo(_createImageIconWidget, true, ""),
    "image" : new WigetCreateInfo(_createImageWidget, false, ""),
    "image.network" : new WigetCreateInfo(_createImage_networkWidget, true, ""),
    "boxconstraintstween" : new WigetCreateInfo(_createBoxConstraintsTweenWidget, false, ""),
    "decorationtween" : new WigetCreateInfo(_createDecorationTweenWidget, false, ""),
    "edgeinsetstween" : new WigetCreateInfo(_createEdgeInsetsTweenWidget, false, ""),
    "edgeinsetsgeometrytween" : new WigetCreateInfo(_createEdgeInsetsGeometryTweenWidget, false, ""),
    "borderradiustween" : new WigetCreateInfo(_createBorderRadiusTweenWidget, false, ""),
    "matrix4tween" : new WigetCreateInfo(_createMatrix4TweenWidget, false, ""),
    "textstyletween" : new WigetCreateInfo(_createTextStyleTweenWidget, false, ""),
    "animatedcontainer" : new WigetCreateInfo(_createAnimatedContainerWidget, false, "child"),
    "animatedpadding" : new WigetCreateInfo(_createAnimatedPaddingWidget, false, "child"),
    "animatedalign" : new WigetCreateInfo(_createAnimatedAlignWidget, false, "child"),
    "animatedpositioned" : new WigetCreateInfo(_createAnimatedPositionedWidget, false, "child"),
    "animatedpositioned.fromrect" : new WigetCreateInfo(_createAnimatedPositioned_fromRectWidget, false, "child"),
    "animatedpositioneddirectional" : new WigetCreateInfo(_createAnimatedPositionedDirectionalWidget, false, "child"),
    "animatedopacity" : new WigetCreateInfo(_createAnimatedOpacityWidget, false, "child"),
    "animateddefaulttextstyle" : new WigetCreateInfo(_createAnimatedDefaultTextStyleWidget, false, "child"),
    "animatedphysicalmodel" : new WigetCreateInfo(_createAnimatedPhysicalModelWidget, false, "child"),
    "layoutbuilder" : new WigetCreateInfo(_createLayoutBuilderWidget, false, ""),
    "fixedextentscrollcontroller" : new WigetCreateInfo(_createFixedExtentScrollControllerWidget, false, ""),
    "fixedextentmetrics" : new WigetCreateInfo(_createFixedExtentMetricsWidget, false, ""),
    "fixedextentscrollphysics" : new WigetCreateInfo(_createFixedExtentScrollPhysicsWidget, false, ""),
    "listwheelscrollview" : new WigetCreateInfo(_createListWheelScrollViewWidget, false, "children[]"),
    "listwheelviewport" : new WigetCreateInfo(_createListWheelViewportWidget, false, "children[]"),
    "localizations" : new WigetCreateInfo(_createLocalizationsWidget, false, "child"),
    "mediaquerydata" : new WigetCreateInfo(_createMediaQueryDataWidget, false, ""),
    "mediaquery" : new WigetCreateInfo(_createMediaQueryWidget, false, "child"),
    "mediaquery.removepadding" : new WigetCreateInfo(_createMediaQuery_removePaddingWidget, false, "child"),
    "modalbarrier" : new WigetCreateInfo(_createModalBarrierWidget, false, ""),
    "animatedmodalbarrier" : new WigetCreateInfo(_createAnimatedModalBarrierWidget, false, ""),
    "navigationtoolbar" : new WigetCreateInfo(_createNavigationToolbarWidget, false, ""),
    "routesettings" : new WigetCreateInfo(_createRouteSettingsWidget, false, ""),
    "navigator" : new WigetCreateInfo(_createNavigatorWidget, false, ""),
    "nestedscrollview" : new WigetCreateInfo(_createNestedScrollViewWidget, false, ""),
    "sliveroverlapabsorber" : new WigetCreateInfo(_createSliverOverlapAbsorberWidget, false, "child"),
    "rendersliveroverlapabsorber" : new WigetCreateInfo(_createRenderSliverOverlapAbsorberWidget, false, "child"),
    "sliveroverlapinjector" : new WigetCreateInfo(_createSliverOverlapInjectorWidget, false, "child"),
    "rendersliveroverlapinjector" : new WigetCreateInfo(_createRenderSliverOverlapInjectorWidget, false, "child"),
    "nestedscrollviewviewport" : new WigetCreateInfo(_createNestedScrollViewViewportWidget, false, ""),
    "rendernestedscrollviewviewport" : new WigetCreateInfo(_createRenderNestedScrollViewViewportWidget, false, "children[]"),
    "notificationlistener" : new WigetCreateInfo(_createNotificationListenerWidget, false, "child"),
    "orientationbuilder" : new WigetCreateInfo(_createOrientationBuilderWidget, false, ""),
    "overlayentry" : new WigetCreateInfo(_createOverlayEntryWidget, false, ""),
    "overlay" : new WigetCreateInfo(_createOverlayWidget, false, ""),
    "glowingoverscrollindicator" : new WigetCreateInfo(_createGlowingOverscrollIndicatorWidget, false, "child"),
    "overscrollindicatornotification" : new WigetCreateInfo(_createOverscrollIndicatorNotificationWidget, false, ""),
    "pagestorage" : new WigetCreateInfo(_createPageStorageWidget, false, "child"),
    "pagecontroller" : new WigetCreateInfo(_createPageControllerWidget, false, ""),
    "pagemetrics" : new WigetCreateInfo(_createPageMetricsWidget, false, ""),
    "pagescrollphysics" : new WigetCreateInfo(_createPageScrollPhysicsWidget, false, ""),
    "pageview" : new WigetCreateInfo(_createPageViewWidget, false, "children[]"),
    "pageview.builder" : new WigetCreateInfo(_createPageView_builderWidget, false, ""),
    "pageroutebuilder" : new WigetCreateInfo(_createPageRouteBuilderWidget, false, ""),
    "performanceoverlay" : new WigetCreateInfo(_createPerformanceOverlayWidget, false, ""),
    "performanceoverlay.allenabled" : new WigetCreateInfo(_createPerformanceOverlay_allEnabledWidget, false, ""),
    "placeholder" : new WigetCreateInfo(_createPlaceholderWidget, false, ""),
    "preferredsize" : new WigetCreateInfo(_createPreferredSizeWidget, false, "child"),
    "primaryscrollcontroller" : new WigetCreateInfo(_createPrimaryScrollControllerWidget, false, "child"),
    "primaryscrollcontroller.none" : new WigetCreateInfo(_createPrimaryScrollController_noneWidget, false, "child"),
    "rawkeyboardlistener" : new WigetCreateInfo(_createRawKeyboardListenerWidget, false, "child"),
    "localhistoryentry" : new WigetCreateInfo(_createLocalHistoryEntryWidget, false, ""),
    "safearea" : new WigetCreateInfo(_createSafeAreaWidget, false, "child"),
    "sliversafearea" : new WigetCreateInfo(_createSliverSafeAreaWidget, false, ""),
    "holdscrollactivity" : new WigetCreateInfo(_createHoldScrollActivityWidget, false, ""),
    "scrolldragcontroller" : new WigetCreateInfo(_createScrollDragControllerWidget, false, ""),
    "scrollconfiguration" : new WigetCreateInfo(_createScrollConfigurationWidget, false, "child"),
    "scrollcontroller" : new WigetCreateInfo(_createScrollControllerWidget, false, ""),
    "trackingscrollcontroller" : new WigetCreateInfo(_createTrackingScrollControllerWidget, false, ""),
    "fixedscrollmetrics" : new WigetCreateInfo(_createFixedScrollMetricsWidget, false, ""),
    "scrollstartnotification" : new WigetCreateInfo(_createScrollStartNotificationWidget, false, ""),
    "scrollupdatenotification" : new WigetCreateInfo(_createScrollUpdateNotificationWidget, false, ""),
    "overscrollnotification" : new WigetCreateInfo(_createOverscrollNotificationWidget, false, ""),
    "scrollendnotification" : new WigetCreateInfo(_createScrollEndNotificationWidget, false, ""),
    "userscrollnotification" : new WigetCreateInfo(_createUserScrollNotificationWidget, false, ""),
    "scrollphysics" : new WigetCreateInfo(_createScrollPhysicsWidget, false, ""),
    "bouncingscrollphysics" : new WigetCreateInfo(_createBouncingScrollPhysicsWidget, false, ""),
    "clampingscrollphysics" : new WigetCreateInfo(_createClampingScrollPhysicsWidget, false, ""),
    "alwaysscrollablescrollphysics" : new WigetCreateInfo(_createAlwaysScrollableScrollPhysicsWidget, false, ""),
    "neverscrollablescrollphysics" : new WigetCreateInfo(_createNeverScrollableScrollPhysicsWidget, false, ""),
    "scrollpositionwithsinglecontext" : new WigetCreateInfo(_createScrollPositionWithSingleContextWidget, false, ""),
    "bouncingscrollsimulation" : new WigetCreateInfo(_createBouncingScrollSimulationWidget, false, ""),
    "clampingscrollsimulation" : new WigetCreateInfo(_createClampingScrollSimulationWidget, false, ""),
    "customscrollview" : new WigetCreateInfo(_createCustomScrollViewWidget, false, ""),
    "listview" : new WigetCreateInfo(_createListViewWidget, false, "children[]"),
    "listview.builder" : new WigetCreateInfo(_createListView_builderWidget, false, ""),
    "gridview" : new WigetCreateInfo(_createGridViewWidget, false, "children[]"),
    "gridview.builder" : new WigetCreateInfo(_createGridView_builderWidget, false, ""),
    "scrollable" : new WigetCreateInfo(_createScrollableWidget, false, ""),
    "scrollbarpainter" : new WigetCreateInfo(_createScrollbarPainterWidget, false, ""),
    "semanticsdebugger" : new WigetCreateInfo(_createSemanticsDebuggerWidget, false, "child"),
    "singlechildscrollview" : new WigetCreateInfo(_createSingleChildScrollViewWidget, false, "child"),
    "sizechangedlayoutnotifier" : new WigetCreateInfo(_createSizeChangedLayoutNotifierWidget, false, "child"),
    "sliverpersistentheader" : new WigetCreateInfo(_createSliverPersistentHeaderWidget, false, ""),
    "sliverprototypeextentlist" : new WigetCreateInfo(_createSliverPrototypeExtentListWidget, false, ""),
    "sliverchildbuilderdelegate" : new WigetCreateInfo(_createSliverChildBuilderDelegateWidget, true, ""),
    "sliverchildlistdelegate" : new WigetCreateInfo(_createSliverChildListDelegateWidget, true, ""),
    "sliverlist" : new WigetCreateInfo(_createSliverListWidget, false, ""),
    "sliverfixedextentlist" : new WigetCreateInfo(_createSliverFixedExtentListWidget, false, ""),
    "slivergrid" : new WigetCreateInfo(_createSliverGridWidget, false, ""),
    "slivergrid.count" : new WigetCreateInfo(_createSliverGrid_countWidget, false, "children[]"),
    "sliverfillviewport" : new WigetCreateInfo(_createSliverFillViewportWidget, false, ""),
    "sliverfillremaining" : new WigetCreateInfo(_createSliverFillRemainingWidget, false, "child"),
    "keepalive" : new WigetCreateInfo(_createKeepAliveWidget, false, "child"),
    "spacer" : new WigetCreateInfo(_createSpacerWidget, false, ""),
    "tablerow" : new WigetCreateInfo(_createTableRowWidget, false, "children[]"),
    "table" : new WigetCreateInfo(_createTableWidget, false, "children[]"),
    "tablecell" : new WigetCreateInfo(_createTableCellWidget, false, "child"),
    "textselectionoverlay" : new WigetCreateInfo(_createTextSelectionOverlayWidget, false, ""),
    "defaulttextstyle" : new WigetCreateInfo(_createDefaultTextStyleWidget, false, "child"),
    "text" : new WigetCreateInfo(_createTextWidget, true, ""),
    "text.rich" : new WigetCreateInfo(_createText_richWidget, true, ""),
    "texture" : new WigetCreateInfo(_createTextureWidget, false, ""),
    "tickermode" : new WigetCreateInfo(_createTickerModeWidget, false, "child"),
    "title" : new WigetCreateInfo(_createTitleWidget, false, "child"),
    "slidetransition" : new WigetCreateInfo(_createSlideTransitionWidget, false, "child"),
    "scaletransition" : new WigetCreateInfo(_createScaleTransitionWidget, false, "child"),
    "rotationtransition" : new WigetCreateInfo(_createRotationTransitionWidget, false, "child"),
    "sizetransition" : new WigetCreateInfo(_createSizeTransitionWidget, false, "child"),
    "fadetransition" : new WigetCreateInfo(_createFadeTransitionWidget, false, "child"),
    "relativerecttween" : new WigetCreateInfo(_createRelativeRectTweenWidget, false, ""),
    "positionedtransition" : new WigetCreateInfo(_createPositionedTransitionWidget, false, "child"),
    "relativepositionedtransition" : new WigetCreateInfo(_createRelativePositionedTransitionWidget, false, "child"),
    "decoratedboxtransition" : new WigetCreateInfo(_createDecoratedBoxTransitionWidget, false, "child"),
    "aligntransition" : new WigetCreateInfo(_createAlignTransitionWidget, false, "child"),
    "animatedbuilder" : new WigetCreateInfo(_createAnimatedBuilderWidget, false, "child"),
    "viewport" : new WigetCreateInfo(_createViewportWidget, false, ""),
    "shrinkwrappingviewport" : new WigetCreateInfo(_createShrinkWrappingViewportWidget, false, ""),
    "widgetinspector" : new WigetCreateInfo(_createWidgetInspectorWidget, false, "child"),
    "willpopscope" : new WigetCreateInfo(_createWillPopScopeWidget, false, "child"),
};
