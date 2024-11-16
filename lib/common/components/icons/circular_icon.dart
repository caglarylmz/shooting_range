import 'package:flutter/material.dart';
import 'package:shooting_range/utils/consts/colors.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
    this.size,
  });

  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelper.isDarkMode(context);
    return Container(
      width: size ?? 30,
      height: size ?? 30,
      decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1,
            color: isDark ? AppColors.softGrey : AppColors.darkestGrey,
          )),
      child: Container(
          margin: const EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundColor: backgroundColor ?? AppColors.primaryColor,
            child: Icon(icon, color: iconColor ?? AppColors.light),
          )),
    );
  }
}
