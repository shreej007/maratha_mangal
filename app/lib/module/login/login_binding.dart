
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController mobileController = TextEditingController();
  late TextEditingController otpController = TextEditingController();
  bool showOtp = false;

  int viewOtp = 1;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}


class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}