
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:app/module/onboarding/onboarding_screen.dart';
import 'package:app/module/registration/registration_binding.dart';
import 'package:app/module/registration/registration_screen.dart';
import 'package:app/module/settings/settings_screen.dart';

class OnboardingController extends GetxController {

  final introKey = GlobalKey<OnboardingScreenState>();

  // Core _core = new Core();
  void onIntroEnd(context) {
    // _core.setUserOnBoard();
    Get.to( RegistrationScreen(), binding: RegistrationBinding());
  }

  Widget buildImage(String assetName) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(assetName, width: 350.0),
    );
  }
}
