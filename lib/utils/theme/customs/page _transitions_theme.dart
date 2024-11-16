import 'package:flutter/material.dart';

class CPageTransitionsTheme {
  CPageTransitionsTheme._();

  static const PageTransitionsTheme pageTransitionsTheme =
      PageTransitionsTheme(builders: {
    TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
    TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
  });
}
