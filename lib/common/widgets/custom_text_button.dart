import '../constants/app_colours.dart';
import 'package:flutter/material.dart';
import 'custom_texts.dart';

class CustomTextButton extends StatefulWidget {
  final Function? onPressed;
  final String ButtonTextValue;
  bool? loading = false;
  bool isButtonDisable;

  CustomTextButton(
      {Key? key,
      required this.onPressed,
      required this.ButtonTextValue,
      this.loading,
      required this.isButtonDisable})
      : super(key: key);

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
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
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          backgroundColor: !widget.isButtonDisable
              ?  MaterialStatePropertyAll<Color>(AppColors.primaryDark)
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
            : CustomTextBold(
                text: "${widget.ButtonTextValue}",
                textSize: 14,
                textColour: !widget.isButtonDisable
                    ? AppColors.primaryWhite
                    : AppColors.textLightGrey,
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}
