import 'package:get/get.dart';
import 'package:app/common/constants/app_colours.dart';

class AboutUsController extends GetxController {
}

class AboutUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutUsController());
  }
}