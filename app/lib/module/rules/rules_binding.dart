import 'package:get/get.dart';
import 'package:app/common/constants/app_colours.dart';

class RulesController extends GetxController {
}

class RulesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RulesController());
  }
}