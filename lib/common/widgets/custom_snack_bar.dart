import '../constants/app_colours.dart';
import 'package:flutter/material.dart';

import 'custom_texts.dart';

class CustomSnackBar extends StatelessWidget {
  final String snackBarMessage;
  final Color backgroundColour;
  const CustomSnackBar({Key? key, required this.backgroundColour, required this.snackBarMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SnackBar(content: CustomText(text: snackBarMessage, textColour: AppColors.primaryWhite),backgroundColor: backgroundColour );
  }
}
