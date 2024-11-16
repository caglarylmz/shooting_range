import 'package:flutter/material.dart';
import 'package:shooting_range/utils/consts/colors.dart';

class ArticleText extends StatelessWidget {
  const ArticleText({
    super.key,
    required this.leftText,
    this.rightText,
    this.borderColor,
    this.borderWidth,
    this.alignment, this.leftTextStyle, this.rightTextStyle,
  });

  final String leftText;
  final String? rightText;
  final TextStyle? leftTextStyle;
  final TextStyle? rightTextStyle;
  final Color? borderColor;
  final double? borderWidth;
  final MainAxisAlignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(
              color: borderColor ?? AppColors.lightGrey,
              width: borderWidth ?? 1.1),
        ),
      ),
      child: Row(
        mainAxisAlignment: alignment ?? MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: leftTextStyle ?? Theme.of(context).textTheme.bodyMedium,
          ),
          if (rightText != null)
            Text(
              rightText!,
              style: rightTextStyle ?? Theme.of(context).textTheme.bodyMedium,
            )
        ],
      ),
    );
  }
}
