import 'package:app/CanditateDetails.dart';

class AppConstants{

  static const String appFontStyle=  'Roboto';

  // routes

  static const defaultSplashScreen = "/";
  static const loginScreen = "/LoginScreen";
  static const otpScreen = "/OtpScreen";
  static const registrationScreen = "/registration";

  static const homeScreen = "/homeScreen";
  static const notificationsScreen = "/notifications";
  static const aboutUsScreen = "/about";
  static const wardScreen = "/ward";
  static const addWardScreen = "/addWard";
  static const galleryScreen = "/gallery";

  static const importantContactsScreen = "/importantContacts";
  static const addImportantContactsScreen = "/addImportantContacts";

  static const complaintsScreen = "/complaints";
  static const socialActivitiesScreen = "/socialActivities";
  static const webDataScreen = "/webData";

  var demoCandidates = [
    CandidateDetails("16/1/1955", "Some name", 2.2, "bjbjvhvhbjnbkbnkbkbjbjbjb", "Pune", "education", 1, "photo"),
    CandidateDetails("16/1/1955", "New name1", 6.2, "avvhvjhvkjvjvjvd", "Pune", "education", 2, "photo"),
    CandidateDetails("16/1/1955", "Check name2", 4.2, "avd", "Pune", "education", 3, "photo"),
    CandidateDetails("16/1/1955", "Test name3", 5.2, "avd", "Pune", "education", 4, "photo"),
  ];


}
