
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/app_colours.dart';
import 'custom_texts.dart';

AppBar customAppBar(String title){
  return AppBar(
    toolbarHeight: 60,
    leading: const BackButton(
      color: AppColors.primaryWhite,
    ),
    title: CustomTextBold(
      text: title,
      textSize: 18,
      textAlign: TextAlign.left,
      textColour: AppColors.primaryWhite,
    ),
    backgroundColor: AppColors.primaryDark,
    foregroundColor: AppColors.primaryBlack,
    centerTitle: false,
    titleSpacing: 0,
    elevation: 1,
  );
}


