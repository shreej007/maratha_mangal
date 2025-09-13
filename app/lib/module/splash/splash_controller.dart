
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:app/module/home/home_binding.dart';
import 'package:app/module/home/home_screen.dart';
import 'package:app/module/onboarding/onboarding_binding.dart';
import 'package:app/module/onboarding/onboarding_screen.dart';
import 'package:app/module/registration/registration_binding.dart';
import 'package:app/module/registration/registration_screen.dart';

class SplashController extends GetxController with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit() {
    animationInitilization();
    super.onInit();
    startTimer();
  }

  animationInitilization() {
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 3))..repeat(reverse: false);
    animation = CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn).obs.value;
    animation.addListener(() => update());
    animationController.forward();
  }
  //
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  //
  void startTimer() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(RegistrationScreen(), binding: RegistrationBinding());
      // Get.to(const HomeScreen(), binding: HomeBinding());
      Get.to(const OnboardingScreen(), binding: OnboardingBinding());
    });
  }
}
