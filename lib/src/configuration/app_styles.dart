import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static const Color backgroundBackgroundNavigation = Color(0xff1B1D29);
  static const Color backgroundCard = Color(0xff2E353F);
  static const Color backgroundDark = Color(0xff232730);
  static const Color primaryColor = Color(0xff569B51);
  static const Color colorTextPrimary = Color(0xffF0F0F0);
  static const Color focusNav = Color(0xff43474C);
  static const Color textColorNonFocus = Color(0xff757575);
  static const Color textColorRed = Color(0xffE80D0D);
  static const LinearGradient gradientButton = LinearGradient(
    colors: [
      Color(0xffFACFFC8),
      Color(0xff125B00),
    ],
  );
  static final ThemeData defaultTheme = ThemeData(
    scaffoldBackgroundColor: backgroundDark,
    appBarTheme:
        const AppBarTheme(backgroundColor: backgroundDark, elevation: 0),
    colorScheme: ColorScheme.fromSwatch(backgroundColor: backgroundDark),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: backgroundBackgroundNavigation,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed),
  );

  // static const smallSeparator = SizedBox(height: 8, width: 8);
  // static const mediumSeparator = SizedBox(height: 16, width: 16);
  // static const bigSeparator = SizedBox(height: 32, width: 32);
  // static const hugeSeparator = SizedBox(height: 64, width: 64);
}
