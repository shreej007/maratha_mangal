import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:app/common/widgets/custom_text_field.dart';
import 'package:app/common/widgets/mm_custome_text_field.dart';

import '../../../common/constants/app_colours.dart';
import '../../../common/constants/app_images.dart';
import '../../../common/widgets/custom_text_button.dart';
import '../../../common/widgets/custom_texts.dart';
import 'otp_controller.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {


  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpController>(
        builder: (controller) => Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:
                        SvgPicture.asset(
                          "assets/images/otp.svg",
                          width: MediaQuery.of(context).size.width*0.4,
                          height: MediaQuery
                              .of(context)
                              .size
                              .width * 0.6,
                        ),
                      ),
                      const Padding(
                        padding:
                        EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                        child: CustomTextBold(
                          text: "Code Verification",
                          textSize: 20,
                          textColour: AppColors.primaryDark,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30, top: 2),
                        child: CustomText(
                            text: "Enter the 4 digit pin received on your mobile"
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20),
                    child:
                    controller.otpView == false ?
                    CustomTextField(textName: 'Enter Mobile Number', valueController: controller.controllerMobile,onChanged: (){},
                    inputType: TextInputType.phone,) :
                    OtpTextField(
                      numberOfFields: 6,
                      borderColor: AppColors.primaryDark,
                      cursorColor: AppColors.primaryDark,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode){
                        controller.controllerOTP.text = verificationCode;
                      }, // end onSubmit
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 5,
                        right: 5,
                        top: MediaQuery.of(context).size.width * 0.2,
                        bottom: MediaQuery.of(context).size.width * 0.1),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        child: CustomTextButton(
                          ButtonTextValue: "Send OTP",
                          onPressed: () {
                            controller.sendOTP();
                          },
                          isButtonDisable: false,
                        )),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }


}