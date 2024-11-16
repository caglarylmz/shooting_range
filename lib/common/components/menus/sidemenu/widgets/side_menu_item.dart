import 'package:flutter/material.dart';
import 'package:shooting_range/common/components/menus/sidemenu/widgets/horizontal_menu_item.dart';
import 'package:shooting_range/common/components/menus/sidemenu/widgets/vertical_menu_item.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({super.key, required this.menuItem, required this.onTap});

  final String menuItem;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    if (AppHelper.isSmallScreen(context)) {
      return VerticalMenuItem(menuItem: menuItem, onTap: onTap);
    }
    return HorizontalMenuItem(menuItem: menuItem, onTap: onTap);
  }
}
