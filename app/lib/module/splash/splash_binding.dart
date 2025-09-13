import 'package:get/get.dart';
import 'package:app/module/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());

    // Get.lazyPut(() => SplashController());
  }
}