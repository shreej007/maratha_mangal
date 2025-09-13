
import 'package:get/get.dart';

class SearchProfileController extends GetxController {

}


class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchProfileController());
  }
}