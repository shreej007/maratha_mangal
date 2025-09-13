import 'package:app/module/login/login_binding.dart';
import 'package:app/module/login/login_screen.dart';
import 'package:app/module/profile/complete_profile_binding.dart';
import 'package:app/theme/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:app/common/app_pages.dart';
import 'package:app/firebase_options.dart';
import 'package:app/module/otp_model/screens/otp_binding.dart';
import 'package:app/module/otp_model/screens/otp_screen.dart';
import 'package:app/module/profile/complete_profile_binding.dart';
import 'package:app/module/profile/complete_profile_screen.dart';
import 'package:app/module/registration/registration_binding.dart';
import 'package:app/module/splash/splash_binding.dart';
import 'package:app/module/splash/splash_screen.dart';

import 'module/home/home_binding.dart';
import 'module/home/home_screen.dart';
import 'module/registration/registration_screen.dart';

Future<void> main() async {
  debugPaintSizeEnabled = false;
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ThemeController());
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final ThemeController controller = Get.find();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maratha Mangal',
      theme: controller.currentTheme,
      // initialBinding: CompleteProfileBinding(),
      // home: CompleteProfileScreen(),
      initialBinding: SplashBinding(),
      home: const SplashScreen(),
      getPages: AppPages.pages,
    );
  }

  // Get.to(const HomeScreen(), binding: HomeBinding());
}
