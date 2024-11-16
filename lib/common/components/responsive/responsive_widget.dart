import 'package:flutter/material.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
  });

  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget smallScreen;


  // final Widget? customScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (AppHelper.isLargeScreen(context)) {
        return largeScreen;
      } else if (AppHelper.isMediumScreen(context)) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen;
      }
    });
  }
}
