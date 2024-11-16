import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shooting_range/common/bindings/app_bindings.dart';
import 'common/components/layouts/layout.dart';
import 'utils/theme/app_theme.dart';

class ShootingRangeApp extends StatelessWidget {
  const ShootingRangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dashboard",
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: AppBindings(),
      home: const AppLayout(),
    );
  }
}
