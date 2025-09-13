import 'package:get/get.dart';
import 'package:app/common/constants/app_colours.dart';
import 'package:app/module/dashboard/dashboard_binding.dart';
import 'package:app/module/dashboard/dashboard_screen.dart';
import 'package:app/module/settings/settings_screen.dart';

class SettingsController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }
  //
  void onBottomBarItemTap(int value) {
    switch (value) {
      case 0:
        Get.to( const DashboardScreen(),binding: DashboardBinding());

        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ActivityHomeScreen()),
        // );
        break;
      case 1:
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => ActivitySearchScreen()),
      // );
        break;
      case 2:
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => ActivityHomeScreen()),
      // );
        break;
      case 3:
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => ActivityNotificationScreen()),
      // );
        break;
      case 4:
        Get.to( SettingsScreen(),binding: SettingsBinding());
        break;
    }
  }

}

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsController());
  }
}