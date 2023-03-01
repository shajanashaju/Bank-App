import 'package:bankapp/configs/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    toggleableActiveColor: kColorPrimary,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.black, size: 18),
      actionsIconTheme: IconThemeData(
        color: kColorPrimary,
      ),
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w600),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey[300],
      thickness: 0.5,
      space: 0.5,
      indent: 10,
      endIndent: 10,
    ),
    primaryColor: kColorPrimary,
    primaryColorDark: kColorPrimaryDark,
    colorScheme: const ColorScheme(
        secondary: kColorSecondary,
        brightness: Brightness.light,
        primary: kColorPrimary,
        onPrimary: Colors.white,
        onSecondary: kColorPrimary,
        onBackground: kColorPrimary,
        onError: Colors.red,
        background: Colors.white,
        error: Colors.red,
        onSurface: kColorPrimary,
        surface: kColorPrimary),
    buttonTheme: const ButtonThemeData(buttonColor: Color(0xff1363df)),
    textTheme: const TextTheme(
      button: kTextStyleButton,
      subtitle1: kTextStyleSubtitle1,
      subtitle2: kTextStyleSubtitle2,
      bodyText1: kTextStyleBodyText1,
      bodyText2: kTextStyleBodyText2,
      headline1: kTextStyleHeadline1,
      headline2: kTextStyleHeadline2,
      headline3: kTextStyleHeadline3,
      headline4: kTextStyleHeadline4,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    fontFamily: 'Poppins',
    cardTheme: CardTheme(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
  );
}
