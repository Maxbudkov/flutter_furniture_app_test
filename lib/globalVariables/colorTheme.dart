import 'package:flutter/material.dart';
import 'package:test_furniture_app/globalVariables/sizeConfig.dart';

// Основные цвета и тема приложения
class AppTheme {
  AppTheme._();

  static const Color appBackgroundColor = Color(0xFFFFFFFF);
  static const Color topBarBackgroundColor = Color(0xFFFFD974);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC442);
  static const Color unSelectedTabBackgroundColor = Color(0xFFFFFFFC);
  static const Color basicTextColor = Color(0xFF4C4C4C);
  static const Color subTitleTextColor = Color(0xFF575556);
  static const Color lightTextColor = Color(0xFFB8B4B5);
  static const Color ultraLightTextColor = Color(0xFFE0E0E0);
  static const Color pinColor = Color(0x44FFFFFF);
  static const Color linkColor = Color(0xFF0082FF);

  static const Color primaryColor = Color(0xFF2196f3);
  static const Color primaryLightColor = Color(0xFF6ec6ff);
  static const Color primaryDarkColor = Color(0xFF0069c0);
  static const Color secondaryColor = Color(0xFFd81b60);
  static const Color secondaryLightColor = Color(0xFFff5c8d);
  static const Color secondaryDarkColor = Color(0xFFa00037);
  static const Color textOnAppBarColor = Color(0xFFfafafa);
  static const Color textColor = Color(0xFFffffff);
  static const Color textBlackColor = Color(0xFF212121);
  static const Color errorColor = Color(0xFFd50000);

  // Здесь и дальше - формирование функций: цветовых тем для приложения
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.appBackgroundColor,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline6: _titleLight,
    headline5: _linkLight,
    subtitle2: _subTitleLight,
    button: _buttonLight,
    headline4: _greetingLight,
    headline3: _searchLight,
    bodyText2: _selectedTabLight,
    bodyText1: _unSelectedTabLight,
  );

  static final TextTheme darkTextTheme = TextTheme(
    headline6: _titleDark,
    headline5: _linkDark,
    subtitle2: _subTitleDark,
    button: _buttonDark,
    headline4: _greetingDark,
    headline3: _searchDark,
    bodyText2: _selectedTabDark,
    bodyText1: _unSelectedTabDark,
  );

  static final TextStyle _titleLight = TextStyle(
    color: Colors.black,
    fontSize: 5.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _linkLight = TextStyle(
    color: Colors.lightBlue,
    fontSize: 4.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _subTitleLight = TextStyle(
    color: subTitleTextColor,
    fontSize: 3 * SizeConfig.textMultiplier,
    height: 1.5,
  );

  static final TextStyle _buttonLight = TextStyle(
    color: Colors.black,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _greetingLight = TextStyle(
    color: Colors.black,
    fontSize: 2.0 * SizeConfig.textMultiplier,
  );

  static final TextStyle _searchLight = TextStyle(
    color: Colors.white,
    fontSize: 2.3 * SizeConfig.textMultiplier,
  );

  static final TextStyle _selectedTabLight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _unSelectedTabLight = TextStyle(
    color: Colors.grey,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _titleDark = _titleLight.copyWith(color: Colors.white);

  static final TextStyle _linkDark = _titleLight.copyWith(color: Colors.white);

  static final TextStyle _subTitleDark =
  _subTitleLight.copyWith(color: Colors.white70);

  static final TextStyle _buttonDark =
  _buttonLight.copyWith(color: Colors.black);

  static final TextStyle _greetingDark =
  _greetingLight.copyWith(color: Colors.black);

  static final TextStyle _searchDark =
  _searchDark.copyWith(color: Colors.black);

  static final TextStyle _selectedTabDark =
  _selectedTabDark.copyWith(color: Colors.white);

  static final TextStyle _unSelectedTabDark =
  _selectedTabDark.copyWith(color: Colors.white70);
}