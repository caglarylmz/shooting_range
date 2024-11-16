import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooting_range/common/components/texts/custom_text.dart';
import 'package:shooting_range/common/controllers/side_menu_controller.dart';
import 'package:shooting_range/utils/consts/colors.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class HorizontalMenuItem extends StatelessWidget {
  const HorizontalMenuItem(
      {super.key, required this.menuItem, required this.onTap});

  final String menuItem;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SideMenuController>();
    final isDark = AppHelper.isDarkMode(context);
    final itemName = menuItem == "Authentication" ? "Log Out" : menuItem;

    return InkWell(
      onTap: onTap,
      onHover: (value) {
        if (value) controller.setOnHoverItem(menuItem);
      },
      child: Obx(
        () => Container(
          color: controller.isActive(menuItem)
              ? (isDark ? AppColors.darkestGrey : AppColors.softGrey)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: controller.isHovering(menuItem) ||
                    controller.isActive(menuItem),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  width: 3,
                  height: 50,
                  color: AppColors.accentColor,
                ),
              ),
              Expanded(
                child: Container(
                  color: controller.isActive(menuItem)
                      ? (isDark ? AppColors.darkestGrey : AppColors.softGrey)
                      : Colors.transparent,
                  child: Row(
                    mainAxisAlignment: AppHelper.isLargeScreen(context)
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: controller.getIconForItem(menuItem, context),
                      ),
                      if (AppHelper.isLargeScreen(context))
                        if (!controller.isActive(menuItem))
                          Flexible(
                            child: CustomText(
                              text: itemName,
                              textStyle: Theme.of(context).textTheme.bodyMedium,
                              color: controller.isHovering(menuItem)
                                  ? (isDark
                                      ? AppColors.softGrey
                                      : AppColors.darkGrey)
                                  : (isDark
                                      ? AppColors.lightGrey
                                      : AppColors.darkGrey),
                            ),
                          )
                        else
                          Flexible(
                            child: CustomText(
                              text: itemName,
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                              color:
                                  (isDark ? AppColors.light : AppColors.dark),
                            ),
                          )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
