
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:app/common/constants/app_colours.dart';
import 'package:app/common/constants/app_strings.dart';
import 'package:app/common/widgets/custom_dropdown.dart';
import 'package:app/common/widgets/mm_custome_text_field.dart';
import 'package:app/module/profile/ConstantStrings.dart';
import 'package:app/module/profile/complete_profile_binding.dart';
import 'package:app/module/profile/complete_profile_screen.dart';
import 'package:app/module/registration/registration_controller.dart';
import 'package:app/module/registration/widgets/mm_text_field.dart';

import 'models/registration_model.dart';

class RegistrationScreen extends StatefulWidget {
  var mobileNumber;
  RegistrationScreen({Key? key, this.mobileNumber}) : super(key: key);

  @override
  RegistrationState createState() => RegistrationState();
}

class RegistrationState extends State<RegistrationScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrationController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(title: const Text('Register')),
        body: SingleChildScrollView(
            child: Container(
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                // image: DecorationImage(
                //   fit: BoxFit.cover,
                //   colorFilter: ColorFilter.mode(
                //       Colors.black.withOpacity(0.2), BlendMode.dstATop),
                //   image: const AssetImage("drawables/slider2.jpg"),
                // ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:10,right:10,top: 0.0, bottom: 0.0),
                child: Form(
                  // key: controller.formKey,
                  child: Column(
                    children: [
                      // Container(height: 30, child: Text("Register")),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: MmCustomTextField(
                            "First Name",
                            controller.controllerFirstName,
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.words,
                            errorText: controller.errorFirstNameText),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: MmCustomTextField("Middle Name", controller.controllerMiddleName,
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.words,
                            errorText: controller.errorMiddleNameText),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: MmCustomTextField(
                            "Last Name", controller.controllerLastName,
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.words,
                            errorText: controller.errorLastNameText),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: CustomDropDown( dropdownValue: controller.dropdownValueGender,
                          errorText: controller.errorGenderText,
                          dropdownList: ConstantStrings.listGender,
                          onChangedClick: (val){
                          controller.setGender(val);
                        },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () async {
                              final date = await showDatePicker(
                                  context: context,
                                  firstDate: DateTime(1960),
                                  initialDate: DateTime.now(),
                                  lastDate: DateTime(2100));
                              if (date != null) {
                                setState(() {
                                  controller.birthdateText = date.day.toString() +
                                      " - " +
                                      date.month.toString() +
                                      " - " +
                                      date.year.toString();
                                });
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(color: AppColors.COLOR_TEXT_FEILD_BORDER),
                                  borderRadius: BorderRadius.circular(5.0)),
                              height: 50.0,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    " ${controller.birthdateText}" ,
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: CustomDropDown( dropdownValue: controller.dropdownValueSubCaste,
                          errorText: controller.errorSubCasteText,
                          dropdownList: ConstantStrings.listSubCaste,
                          onChangedClick: (val){
                            controller.setSubCaste(val);
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: MmCustomTextField("Email", controller.controllerEmail,
                            keyboardType: TextInputType.text,
                            errorText: controller.errorEmailText),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: MmCustomTextField("Mobile", controller.controllerMobileNo,
                            keyboardType: TextInputType.number,
                            errorText: controller.errorMobileNoText),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: MmCustomTextField("Password", controller.controllerPassword,
                            isPassword: true, errorText: controller.errorPasswordText),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: MmCustomTextField(
                            "Confirm Password", controller.controllerConfirmPassword,
                            isPassword: true,
                            errorText: controller.errorConfirmPasswordText),
                      ),

                      Container(
                          padding: const EdgeInsets.only(top: 20,bottom: 20),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  child: ElevatedButton(
                                    // color: Colors.white,
                                    // shape: RoundedRectangleBorder(
                                    //     borderRadius: BorderRadius.circular(30.0),
                                    //     side: const BorderSide(color: Colors.white)),
                                    child: const Text(
                                      "Register",
                                      style: TextStyle(
                                          background: null,
                                          // color: AppColors.theameColorRed,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    onPressed: () {
                                      // if (isRegisterFormValid()) {
                                      controller.registerUser();

                                      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Yay! A SnackBar!'),));

                                      // }

                                      // _selectDate(context);
                                      // showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
                                    },
                                  ),
                                )),
                          ))
                    ],
                  ),
                ),
              ),
            )),
      )
    );
  }
}
