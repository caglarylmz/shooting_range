import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooting_range/common/components/menus/sidemenu/widgets/side_menu_item.dart';
import 'package:shooting_range/common/components/texts/custom_text.dart';
import 'package:shooting_range/common/controllers/navigation_controller.dart';
import 'package:shooting_range/common/controllers/side_menu_controller.dart';
import 'package:shooting_range/common/routing/routes.dart';
import 'package:shooting_range/utils/consts/images.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SideMenuController>();
    final navigationController = Get.find<NavigationController>();
    return ListView(
      children: [
        if (AppHelper.isSmallScreen(context))
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                AppImages.appLogo,
                width: 100,
              ),
              const SizedBox(height: 20),
              const Flexible(
                child: CustomText(
                  text: "Shooting Range",
                  size: 20,
                  weight: FontWeight.bold,
                ),
              ),
              const Divider()
            ],
          ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItems
              .map(
                (menuItem) => SideMenuItem(
                    menuItem: menuItem,
                    onTap: () {
                      if (menuItem == authenticationScreenRoute) {
                        //TODO: go to auth page
                      }
                      if (!controller.isActive(menuItem)) {
                        controller.setActiveItem(menuItem);
                        if (AppHelper.isSmallScreen(context)) Get.back();
                        navigationController.navigateTo(menuItem);
                      }
                    }),
              )
              .toList(),
        ),
      ],
    );
  }
}
