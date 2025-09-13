
import 'package:app/module/login/login_binding.dart';
import 'package:app/module/login/login_screen.dart';
import 'package:get/get.dart';
import 'package:app/common/constants/app_routes.dart';
import 'package:app/module/about_us/about_us_binding.dart';
import 'package:app/module/about_us/about_us_screen.dart';
import 'package:app/module/contact_us/contact_us_binding.dart';
import 'package:app/module/contact_us/contact_us_screen.dart';
import 'package:app/module/dashboard/dashboard_binding.dart';
import 'package:app/module/dashboard/dashboard_screen.dart';
import 'package:app/module/faq/faq_binding.dart';
import 'package:app/module/faq/faq_screen.dart';
import 'package:app/module/help_center/help_center_binding.dart';
import 'package:app/module/help_center/help_center_screen.dart';
import 'package:app/module/home/home_binding.dart';
import 'package:app/module/home/home_screen.dart';
import 'package:app/module/membership/membership_binding.dart';
import 'package:app/module/membership/membership_screen.dart';
import 'package:app/module/onboarding/onboarding_binding.dart';
import 'package:app/module/onboarding/onboarding_screen.dart';
import 'package:app/module/otp_model/screens/otp_binding.dart';
import 'package:app/module/otp_model/screens/otp_screen.dart';
import 'package:app/module/privacy_policy/privacy_policy_binding.dart';
import 'package:app/module/privacy_policy/privacy_policy_screen.dart';
import 'package:app/module/profile/complete_profile_binding.dart';
import 'package:app/module/profile/complete_profile_screen.dart';
import 'package:app/module/registration/registration_binding.dart';
import 'package:app/module/registration/registration_screen.dart';
import 'package:app/module/rules/rules_binding.dart';
import 'package:app/module/rules/rules_screen.dart';
import 'package:app/module/search/search_binding.dart';
import 'package:app/module/search/search_screen.dart';
import 'package:app/module/settings/settings_screen.dart';
import 'package:app/module/settings/settings_binding.dart';
import 'package:app/module/splash/splash_binding.dart';
import 'package:app/module/splash/splash_screen.dart';
import 'package:app/module/terms_and_conditions/terms_conditions_binding.dart';
import 'package:app/module/terms_and_conditions/terms_conditions_screen.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.registration,
      page: () =>  RegistrationScreen(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: AppRoutes.completeProfile,
      page: () => const CompleteProfileScreen(),
      binding: CompleteProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.search,
      page: () => const SearchScreen(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: AppRoutes.settings,
      page: () => SettingsScreen(),
      binding: SettingsBinding(),
    ),
    //
    GetPage(
      name: AppRoutes.aboutUs,
      page: () => const AboutUsScreen(),
      binding: AboutUsBinding(),
    ),
    GetPage(
      name: AppRoutes.membership,
      page: () => const MembershipScreen(),
      binding: MembershipBinding(),
    ),
    GetPage(
      name: AppRoutes.rules,
      page: () => const RulesScreen(),
      binding: RulesBinding(),
    ),
    GetPage(
      name: AppRoutes.faq,
      page: () => const FaqScreen(),
      binding: FaqBinding(),
    ),
    GetPage(
      name: AppRoutes.contactUs,
      page: () => const ContactUsScreen(),
      binding: ContactUsBinding(),
    ),
    GetPage(
      name: AppRoutes.helpCenter,
      page: () => const HelpCenterScreen(),
      binding: HelpCenterBinding(),
    ),
    GetPage(
      name: AppRoutes.termsAndConditions,
      page: () => const TermsConditionsScreen(),
      binding: TermsConditionsBinding(),
    ),
    GetPage(
      name: AppRoutes.privacyPolicy,
      page: () => const PrivacyPolicyScreen(),
      binding: PrivacyPolicyBinding(),
    ),
    GetPage(
      name: AppRoutes.otp,
      page: () => const OtpScreen(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),

  ];
}