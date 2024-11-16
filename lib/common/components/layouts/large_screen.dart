import 'package:flutter/material.dart';
import 'package:shooting_range/common/components/menus/sidemenu/side_menu.dart';
import 'package:shooting_range/utils/helpers/local_navigator.dart';

import '../../../utils/consts/sizes.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SizedBox(width: AppSizes.sideBarSizeLg, child: SideMenu()),
          Expanded(
            child: Container(
              padding:const EdgeInsets.symmetric(horizontal: 16),
                child: localNavigator()),
          ),
        ],
      ),
    );
  }
}
