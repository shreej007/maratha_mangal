
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController extends GetxController {
  late TextEditingController mobileController = TextEditingController();
  late TextEditingController otpController = TextEditingController();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  bool showOtp = false;

  int viewOtp = 1;

  Future<void> loginWithEmail() async {
    final url = Uri.parse('https://silver-invention-7vwj4pww7vqv3r64r-3000.app.github.dev/api/auth/login'); // Replace with your backend URL
    final body = {
      "email": emailController.text,
      "password": passwordController.text
    };
    try {
      final response = await http.post(url,
        headers: {"Content-Type": "application/json"},
        body: json.encode(body),
      );
      if (response.statusCode == 200) {
        // Login successful
        Get.snackbar("Success", "Login successful");
        Get.offAll(() => const DashboardScreen(), binding: DashboardBinding());
        // Navigate to dashboard or next screen
      } else {
        final resp = json.decode(response.body);
        Get.snackbar("Error", resp["message"] ?? "Login failed");
      }
    } catch (e) {
      Get.snackbar("Error", "Server error: $e");
    }
  }

  @override
  void onInit() {
    super.onInit();
  }
}


class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}