import 'package:get/get.dart';
import 'package:shooting_range/common/controllers/navigation_controller.dart';
import 'package:shooting_range/common/controllers/side_menu_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SideMenuController>(() => SideMenuController(), fenix: true);
    Get.lazyPut<NavigationController>(() => NavigationController(), fenix: true);
  }
}
