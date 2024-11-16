import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooting_range/common/controllers/side_menu_controller.dart';
import 'package:shooting_range/utils/consts/sizes.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class ScreenHeadLine extends StatelessWidget {
  const ScreenHeadLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final menuController = Get.find<SideMenuController>();

    return Obx(() => Column(
      children: [
        Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: AppHelper.isSmallScreen(context) ? 56 : 20,
                      left: AppHelper.isSmallScreen(context) ? 20 : 16),
                  child: Text(
                    menuController.activeItem,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
        const SizedBox(height: AppSizes.spaceBetweenSections),

      ],
    ));
  }
}
