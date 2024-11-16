import 'package:flutter/material.dart';
import 'package:shooting_range/utils/consts/colors.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key, required this.iconData, this.onTap});

  final IconData iconData;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelper.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onTap,
          icon: Icon(
            iconData,
            color: isDark ? AppColors.softGrey : AppColors.darkestGrey,
          ),
        ),
        Positioned(
          top: 7,
          right: 7,
          child: Container(
            padding: const EdgeInsets.all(3),
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              border: Border.all(
                  color: isDark ? AppColors.softGrey : AppColors.darkestGrey,
                  width: 1),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}
