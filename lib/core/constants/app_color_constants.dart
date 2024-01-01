import 'package:flutter/material.dart';

class AppColorConstants {
  static AppColorConstants? _instance;
  // Avoid self instance
  AppColorConstants._();
  static AppColorConstants get instance => _instance ??= AppColorConstants._();

  static Color black = Colors.black;

  static Color white = Colors.white;

  static Color blue = Colors.blue;

  static Color gray40066 = fromHex('#66c2c1c0');

  // * Get colors from hex
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) {
      buffer.write('ff');
    }
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
