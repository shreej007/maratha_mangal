import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:app/core/Server.dart';
import 'package:shared_preferences/shared_preferences.dart';




class Core{
  SharedPreferences? prefs;
  // User? currentUser;
  String? token;
  String? userFirebaseToken ;
  File? userProfileImage;
  DateTime? loginClickTime;
  bool isInternet=true;
  Server server = Server();

  bool isInitialized = false;


  bool getConnectionValue(var connectivityResult) {
    bool status;
    switch (connectivityResult) {
      case ConnectivityResult.mobile:
        status = true;
        break;
      case ConnectivityResult.wifi:
        status = true;
        break;
      case ConnectivityResult.none:
        status = false;
        break;
      default:
        status = false;
        break;
    }
    return status;
  }

  void showMessage(String? msg){
    // Fluttertoast.showToast(
    //     msg: msg ?? "",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.BOTTOM,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.grey,
    //     textColor: Colors.white,
    //     fontSize: 16.0);
  }

  // void updateSession(String? token, User? user) {
  //   print("Store Updated session====${token}");
  //   PreferenceUtils.init();
  //   PreferenceUtils.setString("politician_app_token", token!);
  //    _storeSession(token, user!);
  // }
  //
  // void _storeSession(String token, User user) async {
  //   PreferenceUtils.init();
  //   currentUser = user;
  //   token = token;
  //   Future<String> t1;
  //   PreferenceUtils.setString("politician_app_name", user.name.toString());
  //   PreferenceUtils.setString("politician_app_email", user.emailId.toString());
  //   PreferenceUtils.setString("politician_app_mobile", user.mobileNo.toString());
  //   PreferenceUtils.setString("politician_app_role", user.role.toString());
  //   // PreferenceUtils.setString("politician_app_thumb", user.thumb.toString());
  //   // PreferenceUtils.setString("politician_app_id", user.id.toString());
  //   print("get String ===${PreferenceUtils.getString("politician_app_name")}");
  //   print("get Token ===${PreferenceUtils.getString("politician_app_token")}");
  //
  //
  //
  //
  // }
  //
  // logout() async {
  //   PreferenceUtils.init();
  //   PreferenceUtils.remove("politician_app_token");
  //   PreferenceUtils.remove("politician_app_name");
  //   PreferenceUtils.remove("politician_app_thumb");
  //   PreferenceUtils.remove("politician_app_phone");
  //   PreferenceUtils.remove("politician_app_email");
  //   PreferenceUtils.remove("politician_app_role");
  //   PreferenceUtils.remove("politician_app_firebase_token");
  //   currentUser = null;
  // }
  //
  //
  // Future<String?> getToken() async {
  //   PreferenceUtils.init();
  //   print("get token --${PreferenceUtils.getString("politician_app_token")}");
  //   return PreferenceUtils.getString("politician_app_token");
  // }
  //
  // Future<bool> isEmailVerified() async {
  //   PreferenceUtils.init();
  //   return PreferenceUtils.getBool("is_email_verified");
  // }
  //
  //
  //
  // bool isUserLoggedIn() {
  //   PreferenceUtils.init();
  //   print("token====${PreferenceUtils.getString("politician_app_token")}");
  //   return null != token;
  // }
  //
  //
  //
  // //new code v2
  // User? getCurrentUser() {
  //   User currentUserNew = User();
  //   currentUserNew.name = PreferenceUtils.getString("politician_app_name");
  //   currentUserNew.mobileNo = PreferenceUtils.getString("politician_app_mobile");
  //   // currentUserNew.phone = PreferenceUtils.getString("politician_app_phone");
  //   return currentUserNew;
  // }

  bool  isRedundentClick(DateTime currentTime){
    if(loginClickTime==null){
      loginClickTime = currentTime;
      print("first click");
      return false;
    }
    print('diff is ${currentTime.difference(loginClickTime!).inSeconds}');
    if(currentTime.difference(loginClickTime!).inSeconds<5){//set this difference time in seconds
      return true;
    }

    loginClickTime = currentTime;
    return false;
  }

  // User? getCurrentUser() {
  //   PreferenceUtils.init();
  //
  //   print("user name ======${currentUser?.name}");
  //   return currentUser;
  // }

  // void setCurrentUser(User? user) {
  //   print("set Current User");
  //   currentUser = user;
  //   this._storeSession(getToken().toString(), user!);
  // }



  // void updateNotificationCount(){
  //   coreNotificationCount=0;
  // }




 //  void storeFirebaseToken(String firebaseToken) async {
 //    print("Store firebase token===${firebaseToken}");
 //    PreferenceUtils.init();
 //    PreferenceUtils.setString("politician_app_firebase_token", firebaseToken);
 //    //_prefs?.setString("politician_app_firebase_token", firebaseToken ?? '');
 //    userFirebaseToken = firebaseToken;
 //  }
 //  removeFirebaseToken() async {
 //    PreferenceUtils.init();
 //    PreferenceUtils.remove("politician_app_firebase_token");
 //    prefs?.remove("politician_app_firebase_token");
 //    userFirebaseToken = null;
 //  }
 //
 //  String? getUserFirebaseToken()  {
 //    PreferenceUtils.init();
 // //   print("User Firebase Token===${PreferenceUtils.getString("politician_app_firebase_token")}");
 //    if(PreferenceUtils.getString("politician_app_firebase_token") != null) {
 //      return PreferenceUtils.getString("politician_app_firebase_token");
 //    }
 //  }




  //login function
  // Future<ResponseLogin> userLogin (String mobile, String otp) async {
  //   return server.userLogin(mobile, otp);
  // }


}

