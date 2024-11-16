import 'package:flutter/material.dart';
import 'package:shooting_range/utils/consts/colors.dart';
import 'package:shooting_range/utils/consts/images.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

import '../icons/notification_icon.dart';
import '../texts/custom_text.dart';

AppBar topNavBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: !AppHelper.isSmallScreen(context)
          ? Image.asset(AppImages.appLogo, width: 30)
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: AppHelper.isLargeScreen(context),
            child: CustomText(
              text: "Shooting Range",
              textStyle: Theme.of(context).textTheme.titleMedium,
              weight: FontWeight.bold,
            ),
          ),
          Row(
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
              Container(
                decoration: BoxDecoration(
                  color: AppHelper.isDarkMode(context)
                      ? AppColors.white
                      : AppColors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  margin: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundColor: AppHelper.isDarkMode(context)
                        ? AppColors.softGrey
                        : AppColors.darkestGrey,
                    child: Icon(
                      Icons.person_outlined,
                      color: AppHelper.isDarkMode(context)
                          ? AppColors.darkestGrey
                          : AppColors.softGrey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
