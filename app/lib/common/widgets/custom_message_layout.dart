
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/app_constants.dart';
import '../constants/app_images.dart';
import '../constants/app_strings.dart';
import 'custom_elevated_button.dart';
import '../constants/app_colours.dart';
import 'custom_texts.dart';
import 'package:lottie/lottie.dart';

class CustomMessageLayout extends StatefulWidget {
  CustomMessageLayout({
    this.isError,
    this.onErrorTap,
    required this.animationString,
    required this.data_heading,
    required this.data_body,
    this.titleFontSize,
    required this.imageType,
    this.width,
    this.height
  });

  final String animationString;
  final String data_heading;
  final String data_body;
  final double? titleFontSize;
  final String imageType;
  bool? isError;
  Function? onErrorTap;
  final width;
  final height;

  @override
  State<CustomMessageLayout> createState() => _CustomMessageLayoutState();
}

class _CustomMessageLayoutState extends State<CustomMessageLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      color: AppColors.primaryWhite,
      child: Center(
        child: Wrap(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    width: widget.width,
                    height: widget.height,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        boxShadow: null, color: AppColors.primaryWhite),
                    child: returnWidget(context)),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(8),
                  margin:EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(8),
                          child: CustomTextBold(
                            text: widget.data_heading,
                            textSize: widget.titleFontSize,
                            textColour: AppColors.primaryBlack,
                            textAlign: TextAlign.center,
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(8),
                        child: CustomText(
                          text: widget.data_body,
                          textSize: 14,
                          textColour: AppColors.textDarkGrey,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 50,),
                      widget.isError == true
                          ? CustomElevatedButton(
                              elevation: 0,
                              horizontalPadding: 30,
                              verticalPadding: 10,
                              buttonTextValue: AppStrings.retry,
                              onPressed: () {
                                setState(() {
                                  if (widget.onErrorTap != null) {
                                    widget.onErrorTap!();
                                  }
                                });
                              },
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget returnWidget(context) {
    if (widget.imageType == AppImages.svgType) {
      return SvgPicture.asset(widget.animationString,
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width);
    } else if (widget.imageType == AppImages.animationType) {
      return Lottie.asset(
        widget.animationString,
        repeat: true,
        reverse: false,
        animate: true,
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.3,
      );
    } else {
      return Image.asset(
        widget.animationString,
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width * 0.92,
      );
    }
  }
}
