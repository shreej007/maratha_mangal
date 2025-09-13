
import 'package:get/get.dart';

class ContactUsController extends GetxController {
 
}


class ContactUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactUsController());
  }
}