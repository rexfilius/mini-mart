import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class ScreenSizing {
  final screenUtil = ScreenUtil();

  static const designWidth = 375.0;
  static const designHeight = 812.0;

  double deviceWidth() => screenUtil.screenWidth;
  double deviceHeight() => screenUtil.screenHeight;

  static double storyBarRadius = 22.ar;
  static double toolBarHeight = 45.ah;
  static double tileBorderRadius = 12.ar;
  static double lowerBoarderRadius = 8.ar;
}

extension ScreenSizeExtension on num {
  double get aw => w;
  double get ah => h;
  double get ar => r;
  double get asp => sp;
}
