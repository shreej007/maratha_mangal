import '../constants/app_colours.dart';
import 'package:flutter/material.dart';
import 'custom_texts.dart';

class CustomCircularButton extends StatefulWidget {
  final Function? onPressed;
  final String ButtonTextValue;
  bool? loading = false;
  bool isButtonDisable;

  CustomCircularButton(
      {Key? key,
      required this.onPressed,
      required this.ButtonTextValue,
      this.loading,
      required this.isButtonDisable})
      : super(key: key);

  @override
  State<CustomCircularButton> createState() => _CustomCircularButtonState();
}

class _CustomCircularButtonState extends State<CustomCircularButton> {
  var setLoading = false;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.9,
      child: TextButton(
        onPressed: widget.isButtonDisable
            ? null
            : () => {
                  widget.onPressed!(),
                  setState(() {
                    setLoading = true;
                  })
                },
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith((states) => AppColors.rippleEffectPrimary),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: AppColors.borderGrey)
            ),
          ),
          backgroundColor: !widget.isButtonDisable
              ?  MaterialStatePropertyAll<Color>(AppColors.primaryWhite)
              : MaterialStatePropertyAll<Color>(AppColors.borderGrey),
        ),
        child: widget.loading ?? false
            ? SizedBox(
                child: CircularProgressIndicator(
                  color: AppColors.primaryWhite,
                  strokeWidth: 2,
                ),
                width: 20,
                height: 20,
              )
            : Padding(
              padding: const EdgeInsets.all(5.0),
              child: CustomTextBold(
                  text: "${widget.ButtonTextValue}",
                  textSize: 14,
                  textColour: !widget.isButtonDisable
                      ? AppColors.primaryBlack
                      : AppColors.textLightGrey,
                  textAlign: TextAlign.center,
                ),
            ),
      ),
    );
  }
}
