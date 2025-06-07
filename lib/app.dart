import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_mart/config/routing/routes_top.dart';
import 'package:mini_mart/config/theme/app_colors.dart';
import 'package:mini_mart/config/theme/screen_sizing.dart';
import 'package:overlay_support/overlay_support.dart';

class MiniMartApp extends StatefulWidget {
  const MiniMartApp({super.key});

  @override
  State<MiniMartApp> createState() => _MiniMartAppState();
}

class _MiniMartAppState extends State<MiniMartApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        ScreenSizing.designWidth,
        ScreenSizing.designHeight,
      ),
      splitScreenMode: false,
      builder: (context, child) {
        return OverlaySupport.global(
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              systemStatusBarContrastEnforced: true,
            ),
            child: MaterialApp.router(
              title: 'MiniMart',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                useMaterial3: true,
                fontFamily: 'IBMPlexSans',
                //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                scaffoldBackgroundColor: AppColors.white,
              ),
              routerConfig: goRouter,
            ),
          ),
        );
      },
    );
  }
}
