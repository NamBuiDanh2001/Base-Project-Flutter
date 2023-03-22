/*
 * Created by 李卓原 on 2018/9/29.
 * email: zhuoyuan93@gmail.com
 */
//
//import 'dart:math';
//
//import 'package:flutter/material.dart';
//
//class ScreenUtil {
//  static const Size defaultSize = Size(360, 690);
//  static ScreenUtil _instance;
//
//  /// UI设计中手机尺寸 , dp
//  /// Size of the phone in UI Design , dp
//  Size uiSize = defaultSize;
//
//  /// 控制字体是否要根据系统的“字体大小”辅助选项来进行缩放。默认值为false。
//  /// allowFontScaling Specifies whether fonts should scale to respect Text Size accessibility settings. The default is false.
//  bool allowFontScaling = false;
//
//  ///屏幕方向
//  static Orientation _orientation;
//  static double _pixelRatio;
//  static double _screenWidth;
//  static double _screenHeight;
//  static double _statusBarHeight;
//  static double _bottomBarHeight;
//
//  static void init(
//    BuildContext context, {
//    Orientation orientation = Orientation.portrait,
//    Size designSize = defaultSize,
//    bool allowFontScaling = false,
//  }) {
//    if (_screenWidth !=null) {
//      return;
//    }
//    var mediaQuery = MediaQuery.of(context);
//    _screenWidth = mediaQuery.size.width;
//    _screenHeight = mediaQuery.size.height;
//    _pixelRatio = mediaQuery.devicePixelRatio;
//    _statusBarHeight = mediaQuery.padding.top;
//    _bottomBarHeight = mediaQuery.padding.bottom;
//  }
//
//  ///获取屏幕方向
//  ///Get screen orientation
import 'dart:math';

import 'package:flutter/cupertino.dart';

////  Orientation get orientation => _orientation;
//
//  /// 每个逻辑像素的字体像素数，字体的缩放比例
//  /// The number of font pixels for each logical pixel.
////  double get textScaleFactor => WidgetsBinding.instance.window.textScaleFactor;
//
//  /// 设备的像素密度
//  /// The size of the media in logical pixels (e.g, the size of the screen).
//  double get pixelRatio => _pixelRatio;
//
//  /// 当前设备宽度 dp
//  /// The horizontal extent of this size.
//  double get screenWidth => _screenWidth;
//
//  ///当前设备高度 dp
//  ///The vertical extent of this size. dp
//  double get screenHeight => _screenHeight;
//
//  /// 状态栏高度 dp 刘海屏会更高
//  /// The offset from the top, in dp
//  double get statusBarHeight => _statusBarHeight ;
//
//  /// 底部安全区距离 dp
//  /// The offset from the bottom, in dp
////  double get bottomBarHeight => _bottomBarHeight / _pixelRatio;
//
//  /// 实际尺寸与UI设计的比例
//  /// The ratio of actual width to UI design
//  double get scaleWidth => 1;
//
//  ///  /// The ratio of actual height to UI design
//  double get scaleHeight => 1;
//
//  double get scaleText => 1;
//
//  /// 根据UI设计的设备宽度适配
//  /// 高度也可以根据这个来做适配可以保证不变形,比如你先要一个正方形的时候.
//  /// Adapted to the device width of the UI Design.
//  /// Height can also be adapted according to this to ensure no deformation ,
//  /// if you want a square
//  double setWidth(num width) => width * scaleWidth;
//
//  /// 根据UI设计的设备高度适配
//  /// 当发现UI设计中的一屏显示的与当前样式效果不符合时,
//  /// 或者形状有差异时,建议使用此方法实现高度适配.
//  /// 高度适配主要针对想根据UI设计的一屏展示一样的效果
//  /// Highly adaptable to the device according to UI Design
//  /// It is recommended to use this method to achieve a high degree of adaptation
//  /// when it is found that one screen in the UI design
//  /// does not match the current style effect, or if there is a difference in shape.
//  double setHeight(num height) => height * scaleHeight;
//
//  ///Adapt according to the smaller of width or height
//  double radius(num r) => r * scaleText;
//
//  ///字体大小适配方法
//  ///- [fontSize] UI设计上字体的大小,单位sp
//  ///Font size adaptation method
//  ///- [fontSize] The size of the font on the UI design, in sp.
//  ///- [allowFontScaling]
//  double setSp(num fontSize, {bool allowFontScalingSelf}) => fontSize.toDouble();
//}
///*
// * Created by 李卓原 on 2018/9/29.
// * email: zhuoyuan93@gmail.com
// */
//
//import 'dart:math';
//
//import 'package:flutter/material.dart';

class ScreenUtil {
  static const Size defaultSize = Size(360, 690);
  static ScreenUtil _instance;

  /// UI设计中手机尺寸 , dp
  /// Size of the phone in UI Design , dp
  Size uiSize = defaultSize;

  /// 控制字体是否要根据系统的“字体大小”辅助选项来进行缩放。默认值为false。
  /// allowFontScaling Specifies whether fonts should scale to respect Text Size accessibility settings. The default is false.
  bool allowFontScaling = false;

  ///屏幕方向
  static Orientation _orientation;
  static double _pixelRatio;
  static double _screenWidth;
  static double _screenHeight;
  static double _statusBarHeight;
  static double _bottomBarHeight;

//  ScreenUtil._();
//
//  factory ScreenUtil() {
//    assert(
//    _instance != null,
//    '\nEnsure to initialize ScreenUtil before accessing it.\nPlease execute the init method : ScreenUtil.init()',
//    );
//    return _instance;
//  }
  static void init(
    BuildContext context, {
    Orientation orientation = Orientation.portrait,
    Size designSize = defaultSize,
    bool allowFontScaling = false,
  }) {
    if (_screenWidth != null) {
      return;
    }
    var mediaQuery = MediaQuery.of(context);
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _pixelRatio = mediaQuery.devicePixelRatio;
    _statusBarHeight = mediaQuery.padding.top;
    _bottomBarHeight = mediaQuery.padding.bottom;
  }

//  static void init(
//      BoxConstraints constraints, {
//        Orientation orientation = Orientation.portrait,
//        Size designSize = defaultSize,
//        bool allowFontScaling = false,
//      }) {
//    _instance ??= ScreenUtil._();
//    _instance
//      ..uiSize = designSize
//      ..allowFontScaling = allowFontScaling;
//
//    _orientation = orientation;
//    _screenWidth = constraints.maxWidth;
//    _screenHeight = constraints.maxHeight;
//
//    var mediaQuery = WidgetsBinding.instance.window;
//    _pixelRatio = mediaQuery.devicePixelRatio;
//    _statusBarHeight = mediaQuery.padding.top;
//    _bottomBarHeight = mediaQuery.padding.bottom;
//  }

  ///获取屏幕方向
  ///Get screen orientation
  Orientation get orientation => _orientation;

  /// 每个逻辑像素的字体像素数，字体的缩放比例
  /// The number of font pixels for each logical pixel.
  double get textScaleFactor => WidgetsBinding.instance.window.textScaleFactor;

  /// 设备的像素密度
  /// The size of the media in logical pixels (e.g, the size of the screen).
  double get pixelRatio => _pixelRatio;

  /// 当前设备宽度 dp
  /// The horizontal extent of this size.
  static double get screenWidth => _screenWidth;

  ///当前设备高度 dp
  ///The vertical extent of this size. dp
  static double get screenHeight => _screenHeight;

  /// 状态栏高度 dp 刘海屏会更高
  /// The offset from the top, in dp
  static double get statusBarHeight => _statusBarHeight;

  /// 底部安全区距离 dp
  /// The offset from the bottom, in dp
  static double get bottomBarHeight => _bottomBarHeight;

  /// 实际尺寸与UI设计的比例
  /// The ratio of actual width to UI design
  double get scaleWidth => _screenWidth / uiSize.width;

  ///  /// The ratio of actual height to UI design
  double get scaleHeight => _screenHeight / uiSize.height;

  double get scaleText => min(scaleWidth, scaleHeight);

  /// 根据UI设计的设备宽度适配
  /// 高度也可以根据这个来做适配可以保证不变形,比如你先要一个正方形的时候.
  /// Adapted to the device width of the UI Design.
  /// Height can also be adapted according to this to ensure no deformation ,
  /// if you want a square
  double setWidth(num width) => width * scaleWidth;

  /// 根据UI设计的设备高度适配
  /// 当发现UI设计中的一屏显示的与当前样式效果不符合时,
  /// 或者形状有差异时,建议使用此方法实现高度适配.
  /// 高度适配主要针对想根据UI设计的一屏展示一样的效果
  /// Highly adaptable to the device according to UI Design
  /// It is recommended to use this method to achieve a high degree of adaptation
  /// when it is found that one screen in the UI design
  /// does not match the current style effect, or if there is a difference in shape.
  double setHeight(num height) => height * scaleHeight;

  ///Adapt according to the smaller of width or height
  double radius(num r) => r * scaleText;

  ///字体大小适配方法
  ///- [fontSize] UI设计上字体的大小,单位sp
  ///Font size adaptation method
  ///- [fontSize] The size of the font on the UI design, in sp.
  ///- [allowFontScaling]
  double setSp(num fontSize, {bool allowFontScalingSelf}) => allowFontScalingSelf == null
      ? (allowFontScaling ? (fontSize * scaleText * textScaleFactor) : fontSize * scaleText)
      : (allowFontScalingSelf ? (fontSize * scaleText * textScaleFactor) : (fontSize * scaleText));
}
