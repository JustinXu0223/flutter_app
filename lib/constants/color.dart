import 'package:flutter/material.dart';

// 转化web颜色到Color
class HexColor extends Color {
  static int getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(getColorFromHex(hexColor));
}

class ColorConstant {
  // 透明色
  static const Color transparentColor = Color.fromRGBO(0, 0, 0, 0);
  // 默认主题色
  static Color primaryColor = HexColor('#DDBD97'); // 默认颜色
  // 默认字体颜色
  static Color strongColor = HexColor('#414655'); // 强调色
  static Color normalColor = HexColor('#6C7BA8'); // 常规色
  static Color negativeColor = HexColor('#cbced8'); // 置灰色
  static Color positiveColor = HexColor('#6AAAF5'); // 激活色
  static Color warningColor = HexColor('#db6372'); // 警告色
}
