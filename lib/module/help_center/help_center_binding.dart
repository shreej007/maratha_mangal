
import 'package:get/get.dart';

class HelpCenterController extends GetxController {
 
}


class HelpCenterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpCenterController());
  }
}