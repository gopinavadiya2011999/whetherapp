import 'package:flutter/material.dart';

class ColorConstants {
  static const Color white = Colors.white;
  static const Color black = Color(0xFF0B0C10);
  static const Color grey = Color(0xFF828596);
  static const Color blue = Color(0xff1855F4);
  static const Color green = Color(0xff00B012);
  static const Color yellow = Color(0xffEA9803);
  static const Color grey5 = Color(0xff818BAD);
}

class ThemeColors {
   static Color primaryText(BuildContext context) => Theme.of(context).colorScheme.primary;
  static Color secondaryText(BuildContext context) => Theme.of(context).colorScheme.secondary;
  static Color primarySurface(BuildContext context) => Theme.of(context).colorScheme.background;
  static Color iconActive = ColorConstants.blue;
}
