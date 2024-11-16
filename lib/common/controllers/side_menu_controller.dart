import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooting_range/common/routing/routes.dart';
import 'package:shooting_range/utils/consts/colors.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class SideMenuController extends GetxController {
  final _activeItem = homeScreenRoute.obs;
  final _hoverItem = "".obs;

  String get activeItem => _activeItem.value;

  String get hoverItem => _hoverItem.value;

  setActiveItem(String menuItem) {
    if (!isActive(menuItem)) {
      _activeItem.value = menuItem;
    }
  }

  setOnHoverItem(String menuItem) {
    if (!isHovering(menuItem)) {
      _hoverItem.value = menuItem;
    }
  }

  isActive(String menuItem) => _activeItem.value == menuItem;

  isHovering(String menuItem) => _hoverItem.value == menuItem;

  Widget? getIconForItem(String menuItem, BuildContext context) {
    switch (menuItem) {
      case homeScreenRoute:
        return _customIcon(context, Icons.home_filled, homeScreenRoute);
      case tournamentsScreenRoute:
        return _customIcon(context, Icons.tour_rounded, tournamentsScreenRoute);
      case profileScreenRoute:
        return _customIcon(context, Icons.account_box, profileScreenRoute);
      case authenticationScreenRoute:
        return _customIcon(
            context, Icons.exit_to_app, authenticationScreenRoute);
      default:
        return null;
    }
  }

  Widget _customIcon(BuildContext context, IconData icon, String menuItem) {
    final isDark = AppHelper.isDarkMode(context);
    if (isActive(menuItem)) {
      return Icon(
        icon,
        size: 22,
        color: isDark ? AppColors.light : AppColors.dark,
      );
    }

    return Icon(icon,
        color: isHovering(menuItem)
            ? (isDark ? AppColors.softGrey : AppColors.darkGrey)
            : (isDark ? AppColors.lightGrey : AppColors.darkGrey));
  }
}
