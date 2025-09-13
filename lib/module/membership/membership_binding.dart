
import 'package:get/get.dart';

class MembershipController extends GetxController {
 
}


class MembershipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MembershipController());
  }
}