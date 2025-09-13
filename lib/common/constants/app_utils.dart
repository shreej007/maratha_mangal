import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/custom_texts.dart';
import 'app_colours.dart';

class EEUtils {
  static void showSnackBar(BuildContext context, String message,
      String actionButtonText, String onPressMessage) {
    var snackBar = SnackBar(
        content: Text(message),
        action: SnackBarAction(
          label: actionButtonText,
          onPressed: () {
            debugPrint(onPressMessage);
          },
        ),
        duration: const Duration(milliseconds: 1500));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static checkConnectionStatus() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  static currentTime() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  Future showAlertDialog(
      String title,
      String description,
      Function() onPositiveClick,
      Function() onNegativeClick,
      String negativeButtonText,
      String positiveButtonText,
      String image,
      BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
            margin: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 10),
                    child: Row(
                      children: [
                        SvgPicture.asset(image),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomTextBold(
                          text: title,
                          textAlign: TextAlign.left,
                          textSize: 16,
                          textColour: AppColors.primaryBlack,
                        )
                      ],
                    )),
                const Divider(
                  color: AppColors.textDarkGrey,
                )
              ],
            ),
          ),
          content: CustomText(
              text: description,
              textSize: 16,
              textAlign: TextAlign.left,
              textColour: AppColors.primaryBlack),
          // style: TextStyle(fontFamily: 'Schyler'),
          elevation: 2,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          actions: [
            TextButton(
              onPressed: () async {
                await onNegativeClick();
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              ),
              child: CustomText(
                text: negativeButtonText,
                textAlign: TextAlign.left,
                textColour: AppColors.primaryBlack,
                textSize: 16,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: CustomTextButton(
                    onPressed: () {
                      onPositiveClick();
                    },
                    ButtonTextValue: positiveButtonText,
                    isButtonDisable: false)),
            const SizedBox(
              width: 20,
            ),
          ],
        );
      },
    );
  }


}