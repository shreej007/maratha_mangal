
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/module/registration/models/registration_model.dart';

import '../profile/complete_profile_binding.dart';
import '../profile/complete_profile_screen.dart';

class RegistrationController extends GetxController {
  // final formKey = GlobalKey<FormState>();

  final TextEditingController controllerFirstName = TextEditingController();
  final TextEditingController controllerMiddleName = TextEditingController();
  final TextEditingController controllerLastName = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerMobileNo = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  final TextEditingController controllerConfirmPassword = TextEditingController();

  String? firstNameText,
      middleNameText,
      lastNameText,
      genderText,
      birthdateText = "Birthdate",
      subCasteText,
      emailText,
      mobileNoText,
      passwordText,
      confirmPasswordText;

  String errorFirstNameText = "",
      errorMiddleNameText = "",
      errorLastNameText = "",
      errorGenderText = "",
      errorBirthdateText = "",
      errorSubCasteText = "",
      errorEmailText = "",
      errorMobileNoText = "",
      errorPasswordText = "",
      errorConfirmPasswordText = "";

  String dropdownValueGender = 'Gender';
  String dropdownValueSubCaste = 'Sub Caste';

  setGender(newValue){
    dropdownValueGender = newValue;
    update();
  }

  setSubCaste(newValue){
    dropdownValueSubCaste = newValue;
    update();
  }

  registerUser() async {
    if (!validateForm()) return;

    final url = Uri.parse('https://silver-invention-7vwj4pww7vqv3r64r-3000.app.github.dev/api/auth/register'); // Replace with your backend URL
    final body = {
      "first_name": controllerFirstName.text,
      "middle_name": controllerMiddleName.text,
      "last_name": controllerLastName.text,
      "gender": dropdownValueGender,
      "birth_date": birthdateText,
      "sub_caste": dropdownValueSubCaste,
      "email": controllerEmail.text,
      "mobile_no": controllerMobileNo.text,
      "password": controllerPassword.text,
      "confirm_password": controllerConfirmPassword.text
    };

    try {
      final response = await http.post(url,
        headers: {"Content-Type": "application/json"},
        body: json.encode(body),
      );
      if (response.statusCode == 200) {
        // Registration successful
        setFieldToBlank();
        Get.snackbar("Success", "Registration completed successfully");
        Get.to(const DashboardScreen(),binding: DashboardBinding());
      } else {
        // Registration failed
        final resp = json.decode(response.body);
        Get.snackbar("Error", resp["message"] ?? "Registration failed");
      }
    } catch (e) {
      Get.snackbar("Error", "Server error: $e");
    }
  }

  validateForm() {
    if (controllerFirstName.text == "") {
      errorFirstNameText = "Invalid first name";
      update();
      return false;
    } else {
      errorFirstNameText = "";
      update();
      // return true;
    }
    if (controllerMiddleName.text == "") {
      errorMiddleNameText = "Invalid middle name";
      update();
      return false;
    } else {
      errorMiddleNameText = "";
      update();
      // return true;
    }
    if (controllerLastName.text == "") {
      errorLastNameText = "Invalid last name";
      update();
      return false;
    } else {
      errorLastNameText = "";
      update();
      // return true;
    }
    if (dropdownValueGender == "Gender" ) {
      errorGenderText = "Select Gender";
      update();
      return false;
    } else {
      errorGenderText = "";
      update();
      // return true;
    }
    if (dropdownValueSubCaste == "Sub Caste" ) {
      errorSubCasteText = "Select Sub Caste";
      update();
      return false;
    } else {
      errorSubCasteText = "";
      update();
      // return true;
    }
    if (controllerEmail.text == "" || !controllerEmail.text.isEmail ) {
      errorEmailText = "Invalid email";
      update();
      return false;
    } else {
      errorEmailText = "";
      update();
      // return true;
    }
    if (controllerMobileNo.text == "" || !controllerMobileNo.text.isPhoneNumber ) {
      errorMobileNoText = "Invalid mobile";
      update();
      return false;
    } else {
      errorMobileNoText = "";
      update();
      // return true;
    }
    if (controllerPassword.text == "") {
      errorPasswordText = "Invalid password";
      update();
      return false;
    }else{
      errorPasswordText = "";
      update();
    }
    if (controllerConfirmPassword.text != controllerPassword.text) {
      errorConfirmPasswordText = "Password does not match";
      update();
      return false;
    }else{
      errorConfirmPasswordText = "";
      update();
    }
    return true;
  }

  setFieldToBlank(){
    controllerFirstName.text = "";
    controllerLastName.text = "";
    controllerEmail.text = "";
    dropdownValueGender = "Gender";
    controllerMobileNo.text = "";
    birthdateText = "";
    dropdownValueSubCaste = "Sub Caste";
    controllerPassword.text = "";
    errorFirstNameText = "";
    errorMiddleNameText = "";
    errorLastNameText = "";
    errorGenderText = "";
    errorBirthdateText = "";
    errorSubCasteText = "";
    errorEmailText = "";
    errorMobileNoText = "";
    errorPasswordText = "";
    errorConfirmPasswordText = "";
  }

  //
  Future<void> selectDate(BuildContext context) async {
    final DateTime? d = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2020),

    );
    // if (d != null)
    //   setState(() {
    //     birthdateText = new DateFormat.yMMMMd("en_US").format(d);
    //   });
  }

 
}

