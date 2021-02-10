import 'package:flutter/material.dart';

// Класс для быстрого вызова всех основных размеров в приложении
class SizeConfig {
  // Основные размеры экрана
  static double _screenWidth;
  static double _screenHeight;
  static double _ratio;

  // Вычисляемые размеры экрана
  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;

    // Вычисление ориентации экрана
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      isPortrait = false;
      isMobilePortrait = false;
    }

    // Вычисляемые размеры экрана
    textMultiplier = _screenWidth / 100;
    imageSizeMultiplier = _screenHeight / 100;
    heightMultiplier = _screenHeight / 100;
    widthMultiplier = _screenWidth / 100;
    _ratio = _screenWidth / _screenHeight;
  }

  // Распечатать основные размеры в приложении
  void printStatus() {
    print('START SC');
    print('SC WIDTH: $_screenWidth');
    print('SC HEIGHT: $_screenHeight');
    print('SC HEIGHT MULTI $heightMultiplier');
    print('SC WIDTH MULTI $widthMultiplier');
    print('SC imageSizeMultiplier $imageSizeMultiplier');
    print('SC textMultiplier $textMultiplier');
    print('SC ratio $_ratio');
    print('DONE SC');
  }
}
