import 'package:flutter/material.dart';
import '../constants/app_colours.dart';
import 'custom_texts.dart';

class CustomElevatedButton extends StatefulWidget {
  final Function onPressed;
  final String buttonTextValue;
  final double? elevation;
  final double? horizontalPadding;
  final double? verticalPadding;

  const CustomElevatedButton(
      {Key? key,
      required this.buttonTextValue,
      required this.onPressed,
      this.elevation,
      this.horizontalPadding,
      this.verticalPadding})
      : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => widget.onPressed(),
      style: widget.elevation != null
          ? ButtonStyle(
              elevation: MaterialStateProperty.all(
                widget.elevation,
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              backgroundColor:
                  const MaterialStatePropertyAll<Color>(AppColors.lightOrange),
            )
          : ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              backgroundColor:
                  const MaterialStatePropertyAll<Color>(AppColors.lightOrange),
            ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: widget.horizontalPadding ?? 0.0,
          vertical: widget.verticalPadding ?? 0.0,
        ),
        child: CustomTextBold(
          text: widget.buttonTextValue,
          textSize: 14,
          textColour: AppColors.primaryDark,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
