import 'package:flutter/material.dart';
import '../constants/app_colours.dart';
import '../constants/app_constants.dart';

class CustomTextBold extends StatefulWidget {
  final String text;
  final Color? textColour;
  final double? textSize;
  final textAlign;
  final lineheight;

  const CustomTextBold({
    Key? key,
    required this.text,
    this.textColour,
    this.textSize,
    this.textAlign,
    this.lineheight,
  }) : super(key: key);

  @override
  State<CustomTextBold> createState() => _CustomTextBoldState();
}

class _CustomTextBoldState extends State<CustomTextBold> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign ?? TextAlign.center,
      style: TextStyle(
        // fontFamily:  AppConstants.appFontStyle,
        fontSize: widget.textSize ?? 20,
        color: widget.textColour ?? AppColors.textDarkGrey,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class CustomText extends StatefulWidget {
  final String text;
  final Color? textColour;
  final double? textSize;
  final textAlign;
  final double? lineHeight;
  var maxline;

   CustomText(
      {Key? key,
      required this.text,
      this.textColour,
      this.textSize,
      this.textAlign,
      this.lineHeight,
      this.maxline
      })
      : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign ?? TextAlign.center,
      maxLines: widget.maxline ?? 20 ,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          height: widget.lineHeight ??  1.4,
          // fontFamily: AppConstants.appFontStyle,
          fontSize: widget.textSize ?? 20,
          color: widget.textColour ?? AppColors.textDarkGrey,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.1),
    );
  }
}
