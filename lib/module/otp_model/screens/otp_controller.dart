import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../registration/registration_binding.dart';
import '../../registration/registration_screen.dart';

class OtpController extends GetxController{

  final TextEditingController controllerOTP = TextEditingController();
  final TextEditingController controllerMobile = TextEditingController();

  var otpView = false;
  var vId;

  sendOTP(){
    if(controllerMobile.text != "" && !otpView){
      verifyPhoneNumber("+91${controllerMobile.text.toString()}");
    }else{
      signInWithPhoneNumber(vId, controllerOTP.text);
    }
  }

  Future<void> verifyPhoneNumber(String phoneNumber) async {

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {

        // Called when auto verification is successful
       // await FirebaseAuth.instance.signInWithCredential(credential);
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: vId,
          smsCode: controllerOTP.text,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
        debugPrint("verification success $credential");
        // You can navigate to the desired screen after successful verification
      },
      verificationFailed: (FirebaseAuthException e) {
        // Called when verification fails
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) async {
        // Called when the verification code is sent to the user's phone
        // Save the verification ID and navigate to the OTP screen
        vId = verificationId;
        otpView = true;
        update();
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Called when the code auto-retrieval timeout occurs
        // You can handle this scenario accordingly
      },
      timeout: const Duration(seconds: 60), // Adjust the timeout as needed
      // Optional parameters:
      forceResendingToken: null, // Resending token obtained from codeSent callback// For testing purposes
      autoRetrievedSmsCodeForTesting: null, // For testing purposes
    );
  }

  checkValidation(vId)async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: vId,
      smsCode: controllerOTP.text,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  void signInWithPhoneNumber(String verificationId, String smsCode) async {
    final AuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    try {
      final UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
      debugPrint("verification success $credential");
      Get.to( RegistrationScreen(mobileNumber: controllerMobile.text,), binding: RegistrationBinding());
    } catch (e) {
      debugPrint("verification error $e");
      // Handle verification failure.
    }
  }

}
