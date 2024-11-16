import 'package:flutter/material.dart';
import 'package:shooting_range/utils/consts/colors.dart';

class CTextButtonTheme {
  CTextButtonTheme._();

  static final light = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.black,
      textStyle: const TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
    )
  );
  static final dark = TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
      )
  );
}
