import 'package:flutter/material.dart';
import 'package:whetherapp/Infrastructure/Constant/color_costant.dart';

class ConstantTheme{
  static ThemeData darkTheme = ThemeData(
      pageTransitionsTheme:  const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      colorScheme: const ColorScheme.light().copyWith(
        background: Colors.white, //primarySurface
        primary: ColorConstants.black, //primaryText
        secondary: ColorConstants.grey5, //secondaryText
      ),
      useMaterial3: true,
  );

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      pageTransitionsTheme:  const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),

      colorScheme: const ColorScheme.dark().copyWith(
        background: Colors.black, //primarySurface
        primary: ColorConstants.white, //primaryText
        secondary: ColorConstants.grey, //secondaryText
      ),
  );
}