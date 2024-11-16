import 'package:flutter/material.dart';
import 'package:shooting_range/common/components/appbar/appbar.dart';
import 'package:shooting_range/common/components/layouts/small_screen.dart';
import 'package:shooting_range/common/components/menus/sidemenu/side_menu.dart';

import '../appbar/top_navbar.dart';
import '../responsive/responsive_widget.dart';
import 'large_screen.dart';
import 'medium_screen.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
      appBar: CAppBar(scaffoldKey: scaffoldKey),
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      drawer: const Drawer(child: SideMenu(),),
      body: const ResponsiveWidget(
          largeScreen: LargeScreen(),
          mediumScreen: MediumScreen(),
          smallScreen: SmallScreen()),
    );
  }
}
