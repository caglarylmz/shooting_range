import 'package:flutter/material.dart';
import 'package:shooting_range/utils/consts/sizes.dart';
import 'package:shooting_range/utils/helpers/local_navigator.dart';

import '../menus/sidemenu/side_menu.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Row(
        children: [
          const SizedBox(
              width: AppSizes.sideBarSizeMd, child: SideMenu()),
          Expanded(
            child: localNavigator(),
          ),
        ],
      ),
    );
  }
}
