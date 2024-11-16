import 'package:flutter/material.dart';
import 'package:shooting_range/utils/consts/colors.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class CurvedCard extends StatelessWidget {
  const CurvedCard({
    super.key,
    this.cardPadding,
    this.width,
    this.height,
    this.cardRadius,
    this.cardBgColor,
    this.cardShadow,
    required this.child,
  });

  final EdgeInsetsGeometry? cardPadding;
  final double? width;
  final double? height;
  final double? cardRadius;
  final Color? cardBgColor;
  final List<BoxShadow>? cardShadow;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelper.isDarkMode(context);
    return Container(
      padding: cardPadding ??
          const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cardRadius ?? 20),
        color: cardBgColor ?? (isDark ? AppColors.dark : AppColors.light),
        boxShadow: cardShadow ??
            [
              BoxShadow(
                color: isDark ? AppColors.light : AppColors.dark,
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(1, 2),
              ),
            ],
      ),
      child: child,
    );
  }
}
