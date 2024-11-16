import 'package:flutter/material.dart';
import 'package:shooting_range/common/components/icons/circular_icon.dart';
import 'package:shooting_range/common/components/icons/notification_icon.dart';
import 'package:shooting_range/common/components/texts/custom_text.dart';
import 'package:shooting_range/utils/consts/colors.dart';
import 'package:shooting_range/utils/consts/images.dart';
import 'package:shooting_range/utils/consts/sizes.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CAppBar({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 1),
      color: Colors.transparent,
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (!AppHelper.isSmallScreen(context))
            SizedBox(
              width: AppHelper.isLargeScreen(context)
                  ? AppSizes.sideBarSizeLg
                  : AppSizes.sideBarSizeMd,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.appLogo,
                    width: 45,
                  ),
                  if (AppHelper.isLargeScreen(context))
                    Text(
                      "Shooting Range",
                      style: Theme.of(context).textTheme.titleLarge,
                    )
                ],
              ),
            )
          else
            IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
          //Spacer(flex: 2,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings,
                    color: AppHelper.isDarkMode(context)
                        ? AppColors.softGrey
                        : AppColors.darkestGrey),
              ),
              NotificationIcon(
                iconData: Icons.notifications,
                onTap: () {},
              ),
              Container(
                width: 1,
                height: 22,
                color: AppColors.lightGrey,
              ),
              SizedBox(width: AppHelper.isSmallScreen(context) ? 12 : 24),
              CustomText(
                text: AppHelper.isLargeScreen(context)
                    ? "Muhammed Abdülsamet Elbi"
                    : AppHelper.isMediumScreen(context)
                        ? AppHelper.truncateText("Muhammed Abdülsamet Elbi", 12)
                        : "",
                textStyle: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(width: AppHelper.isSmallScreen(context) ? 8 : 12),
              const CircularIcon(icon: Icons.person_2_rounded),
              const SizedBox(width: 8)
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
