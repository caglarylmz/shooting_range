import 'package:flutter/material.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.size,
      this.color,
      this.weight,
      this.textTheme,
      this.align,
      this.maxLines,
      this.textStyle});

  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextTheme? textTheme;
  final TextAlign? align;
  final int? maxLines;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelper.isDarkMode(context);
    return Text(
      text,
      style: textStyle ??
          TextStyle(
            fontSize: size ?? 16,
            color: color ?? (isDark ? Colors.white : Colors.black),
            fontWeight: weight ?? FontWeight.normal,
          ),
      maxLines: maxLines ?? 1,

      textAlign: align ?? TextAlign.start,
    );
  }
}
