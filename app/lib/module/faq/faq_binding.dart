
import 'package:get/get.dart';

class FaqController extends GetxController {
 
}


class FaqBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaqController());
  }
}