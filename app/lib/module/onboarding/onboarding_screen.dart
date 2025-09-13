import 'package:app/common/constants/app_colours.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:app/common/constants/app_images.dart';
import 'package:app/module/onboarding/onboarding_controller.dart';

class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({super.key});
  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  


  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28.0,
        color: Colors.red,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 19.0,
        color: Colors.black87,
      ),
      // fullScreen: false,
      // safeArea: 10,
      imageFlex: 1,
      bodyAlignment: Alignment.center, // Align body text
      titlePadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      bodyPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      // descriptionPadding: EdgeInsets.symmetric(horizontal: 16.0),
      imagePadding: EdgeInsets.only(top: 0.0, bottom: 0.0),
      imageAlignment: Alignment.center, // Or Alignment.topCenter
      pageColor: Colors.white, // Softer background
      // boxDecoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [Colors.pinkAccent, Colors.orangeAccent],
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter,
      //   ),
      // ),
    );
    return GetBuilder<OnboardingController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height*0.20,
                  color: Colors.transparent,
                  child: Text("")),
              Expanded(
                child: IntroductionScreen(
                  key: controller.introKey,
                  pages: [
                    PageViewModel(
                      title: "Register",
                      body: "आपल्या संपूर्ण माहितीसह मंगल मराठा वर आपले प्रोफाईल तयार करा.",
                      image: controller.buildImage(AppImages.onboardingOne),
                      decoration: pageDecoration,
                    ),
                    PageViewModel(
                      title: "Find Your Best Match",
                      body: "आपल्या अपेक्षेप्रमाणे स्थळे शोधण्यासाठी उपलब्ध असलेले विविध सर्च पर्याय वापरा.",
                      image: controller.buildImage(AppImages.onboardingTwo),
                      decoration: pageDecoration,
                    ),
                    PageViewModel(
                      title: "Send Response",
                      body: "योग्य वाटणाऱ्या स्थळांना फोन किंवा ई-मेल ने संपर्क करा.",
                      image: controller.buildImage(AppImages.onboardingThree),
                      decoration: pageDecoration,
                    ),
                  ],
                  onDone: () => controller.onIntroEnd(context),
                  //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
                  showSkipButton: true,
                  // skipFlex: 0,
                  nextFlex: 0,
                  skip: const Text(''),
                  next: const Icon(Icons.arrow_forward,color: AppColors.primary,),
                  done: const Text('Lets Go', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
                  dotsDecorator: const DotsDecorator(
                    size: Size(10.0, 10.0),
                    color: Color(0xFFBDBDBD),
                    activeColor: Colors.red,
                    activeSize: Size(22.0, 10.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
