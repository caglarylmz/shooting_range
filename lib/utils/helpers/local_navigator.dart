import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooting_range/common/controllers/navigation_controller.dart';
import 'package:shooting_range/common/routing/router.dart';
import 'package:shooting_range/common/routing/routes.dart';

final _navigationController = Get.find<NavigationController>();

Navigator localNavigator() => Navigator(
      key: _navigationController.navigationKey,
      initialRoute: homeScreenRoute,
      onGenerateRoute: generateRoute,
    );
