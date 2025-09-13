
import 'package:get/get.dart';
import 'package:app/module/settings/settings_binding.dart';
import 'package:app/module/settings/settings_screen.dart';

class DashboardController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  void onBottomBarItemTap(int value) {
    switch (value) {
      case 0:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ActivityHomeScreen()),
        // );
        break;
      case 1:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ActivityUserList()),
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
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ActivitySettingsScreen()),
        // );
        break;
    }
  }

}


class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}