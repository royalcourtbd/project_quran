import 'package:flutter/material.dart';

import 'package:get/get.dart';

String Function(Color) getHexFromColor = (Color color) {
  try {
    final int colorInt = color.value;
    final String hexColor = colorInt.toRadixString(16).padLeft(8, '0');
    final String hexColorWithoutAlpha = hexColor.substring(2);
    return "#$hexColorWithoutAlpha";
  } catch (e) {
    return "#00000000";
  }
};

Future<void> navigateTo<T>({
  required Widget page,
  T? args,
}) async {
  Get.to(() => page, transition: Transition.cupertino, arguments: [args]);
}

ColorFilter buildColorFilterToChangeColor(Color? color) =>
    ColorFilter.mode(color ?? Colors.black, BlendMode.srcATop);

class QuranScreen {
  static double? _width;
  static double? _height;

  static double width() {
    _width ??= Get.width;
    return _width!;
  }

  static double height() {
    _height ??= Get.height;
    return _height!;
  }
}
