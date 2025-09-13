
import 'dart:ui';
import 'package:app/common/constants/app_images.dart';
import 'package:app/common/constants/app_colours.dart';
import 'package:app/module/dashboard/dashboard_binding.dart';
import 'package:app/module/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../common/widgets/mm_custome_text_field.dart';
import 'login_binding.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginScreen> with TickerProviderStateMixin {


  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: SafeArea(
  //       child: Stack(
  //         children: [
  //           // Background Image
  //           SizedBox(
  //             width: double.infinity,
  //             height: double.infinity,
  //             child: Image.asset(
  //               AppImages.sliderTwo,
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //
  //           // Blur Layer
  //           BackdropFilter(
  //             filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
  //             child: Container(
  //               color: Colors.black.withOpacity(0.26  ),
  //             ),
  //           ),
  //
  //           // Foreground Content
  //           SingleChildScrollView(
  //             child: Column(
  //               children: [
  //                 // App Logo
  //                 Padding(
  //                   padding: EdgeInsets.only(
  //                     top: MediaQuery.of(context).size.height * 0.16,
  //                   ),
  //                   child: Image.asset(
  //                     AppImages.footerLogo, // Update your logo path
  //                     height: 100,
  //                     width: MediaQuery.of(context).size.width*0.8,
  //                   ),
  //                 ),
  //
  //                 Padding(
  //                   padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
  //                   child: Stack(
  //                     alignment: Alignment.center,
  //                     clipBehavior: Clip.none,
  //                     children: [
  //                       Container(
  //                         width: 360,
  //                         padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 24),
  //                         decoration: BoxDecoration(
  //                           color: Colors.white,
  //                           borderRadius: BorderRadius.circular(10),
  //                         ),
  //                         child: Column(
  //                           children: [
  //                             const Text(
  //                               "USER LOGIN",
  //                               style: TextStyle(
  //                                 fontSize: 18,
  //                                 fontWeight: FontWeight.bold,
  //                               ),
  //                             ),
  //
  //                             // Mobile Number Field
  //                             Padding(
  //                               padding: const EdgeInsets.only(top: 14.0),
  //                               child: TextFormField(
  //                                 controller: mobileController,
  //                                 decoration: const InputDecoration(
  //                                   labelText: "Enter Mobile Number",
  //                                   border: UnderlineInputBorder(),
  //                                 ),
  //                                 keyboardType: TextInputType.number,
  //                                 inputFormatters: [
  //                                   FilteringTextInputFormatter.digitsOnly,
  //                                   LengthLimitingTextInputFormatter(10),
  //                                 ],
  //                               ),
  //                             ),
  //
  //                             // Conditionally show OTP field
  //                             if (showOtp)
  //                               Padding(
  //                                 padding: const EdgeInsets.only(top: 10.0, left: 10,right: 10),
  //                                 child: PinCodeTextField(
  //                                   appContext: context,
  //                                   length: 4,
  //                                   controller: otpController,
  //                                   autoFocus: true,
  //                                   obscureText: false,
  //                                   keyboardType: TextInputType.number,
  //                                   animationType: AnimationType.fade,
  //                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                                   pinTheme: PinTheme(
  //                                     shape: PinCodeFieldShape.underline,
  //                                     fieldHeight: 50,
  //                                     fieldWidth: 40,
  //                                     activeColor: Colors.orange,
  //                                     selectedColor: Colors.black54,
  //                                     inactiveColor: Colors.grey,
  //                                   ),
  //                                   onChanged: (value) {},
  //                                 ),
  //                               ),
  //
  //
  //                             // Forward Arrow Button
  //                             // Submit / Forward Arrow Button
  //                             Padding(
  //                               padding: const EdgeInsets.only(top: 18.0),
  //                               child: showOtp
  //                                   ? ElevatedButton(
  //                                 onPressed: () {
  //                                   if (otpController.text.length == 4) {
  //                                     Get.to(const DashboardScreen(), binding: DashboardBinding());
  //                                   } else {
  //                                     ScaffoldMessenger.of(context).showSnackBar(
  //                                       const SnackBar(
  //                                         content: Text("Please enter a valid 4-digit OTP."),
  //                                       ),
  //                                     );
  //                                   }
  //                                 },
  //                                 style: ElevatedButton.styleFrom(
  //                                   backgroundColor: Colors.orange,
  //                                   shape: RoundedRectangleBorder(
  //                                     borderRadius: BorderRadius.circular(8),
  //                                   ),
  //                                   padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  //                                 ),
  //                                 child: const Text(
  //                                   "Submit",
  //                                   style: TextStyle(color: Colors.white),
  //                                 ),
  //                               )
  //                                   : GestureDetector(
  //                                 onTap: () {
  //                                   setState(() {
  //                                     showOtp = true;
  //                                   });
  //                                 },
  //                                 child: const CircleAvatar(
  //                                   radius: 25,
  //                                   backgroundColor: Colors.orange,
  //                                   child: Icon(
  //                                     Icons.arrow_forward_rounded,
  //                                     color: Colors.white,
  //                                   ),
  //                                 ),
  //                               ),
  //                             ),
  //
  //                             // Back Button Text
  //                             if (showOtp)
  //                               Padding(
  //                                 padding: const EdgeInsets.only(top: 12.0),
  //                                 child: GestureDetector(
  //                                   onTap: () {
  //                                     setState(() {
  //                                       showOtp = false;
  //                                       otpController.clear();
  //                                     });
  //                                   },
  //                                   child: const Text(
  //                                     "Back",
  //                                     style: TextStyle(
  //                                       fontSize: 14,
  //                                       color: Colors.orange,
  //                                       fontWeight: FontWeight.bold,
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ),
  //
  //
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //
  //                 // Doctor / Practitioner Link
  //                 GestureDetector(
  //                   onTap: () {},
  //                   child: Padding(
  //                     padding: const EdgeInsets.only(top: 16.0),
  //                     child: RichText(
  //                       text: const TextSpan(
  //                         text: 'I am Doctor / Practitioner  ',
  //                         style: TextStyle(
  //                           fontSize: 12,
  //                           color: Colors.white,
  //                           fontFamily: 'Rubik-regular',
  //                         ),
  //                         children: [
  //                           TextSpan(
  //                             text: 'Click Here',
  //                             style: TextStyle(
  //                               color: Colors.orange,
  //                               fontWeight: FontWeight.bold,
  //                             ),
  //                           )
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //
  //                 const SizedBox(height: 10),
  //                 const Text(
  //                   "OR",
  //                   style: TextStyle(
  //                     fontSize: 12,
  //                     color: Colors.white,
  //                   ),
  //                 ),
  //                 const SizedBox(height: 10),
  //
  //                 // Brand Link
  //                 GestureDetector(
  //                   onTap: () {},
  //                   child: RichText(
  //                     text: const TextSpan(
  //                       text: 'I am a Brand  ',
  //                       style: TextStyle(
  //                         fontSize: 12,
  //                         color: Colors.white,
  //                         fontFamily: 'Rubik-regular',
  //                       ),
  //                       children: [
  //                         TextSpan(
  //                           text: 'Click Here',
  //                           style: TextStyle(
  //                             color: Colors.orange,
  //                             fontWeight: FontWeight.bold,
  //                           ),
  //                         )
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
     return GetBuilder<LoginController>(
      builder: (controller) => Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
               AppImages.sliderTwo,
                fit: BoxFit.cover,
              ),
            ),

            // Blur Overlay
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                color: Colors.black.withOpacity(0.26),
              ),
            ),

            // Foreground Content
            SingleChildScrollView(
              child: Column(
                children: [
                  // App Logo
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.16,
                    ),
                    child: Image.asset(
                      AppImages.footerLogo,
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 360,
                          padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 24),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: controller.viewOtp == 1
                              ? Column(
                            children: [
                              const Text(
                                "USER LOGIN",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                controller: controller.mobileController,
                                decoration: const InputDecoration(
                                  labelText: "Enter Mobile Number",
                                  border: UnderlineInputBorder(),
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(10),
                                ],
                              ),
                              const SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  controller.viewOtp = 2;
                                  controller.update();

                                  // if (controller.mobileController.text.length == 10) {
                                  //   setState(() {
                                  //     controller.viewOtp = 2;
                                  //   });
                                  // } else {
                                  //   ScaffoldMessenger.of(context).showSnackBar(
                                  //     const SnackBar(
                                  //       content: Text("Please enter a valid 10-digit mobile number."),
                                  //     ),
                                  //   );
                                  // }
                                },
                                child: const CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.orange,
                                  child: Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                              :  Column(
                            children: [
                          const Text(
                          "ENTER OTP",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: PinCodeTextField(
                            appContext: context,
                            length: 4,
                            controller: controller.otpController,
                            autoFocus: true,
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            animationType: AnimationType.fade,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.underline,
                              fieldHeight: 50,
                              fieldWidth: 40,
                              activeColor: Colors.orange,
                              selectedColor: Colors.black54,
                              inactiveColor: Colors.grey,
                            ),
                            onChanged: (value) {},
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (controller.otpController.text.length == 4) {
                                Get.to(DashboardScreen(), binding: DashboardBinding());
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Please enter a valid 4-digit OTP."),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            ),
                            child: const Text("Submit", style: TextStyle(color: Colors.white)),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            controller.viewOtp = 1;
                            controller.update();
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Back",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                          )
                        ),
                      ],
                    ),
                  ),

                  // Doctor / Practitioner Link
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'I am Doctor / Practitioner  ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Rubik-regular',
                          ),
                          children: [
                            TextSpan(
                              text: 'Click Here',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child:  Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),


                  // Brand Link
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'I am a Brand  ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Rubik-regular',
                          ),
                          children: [
                            TextSpan(
                              text: 'Click Here',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      )
     );
  }

}
