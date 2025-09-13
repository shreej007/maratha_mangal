import 'package:flutter/material.dart';
import '../constants/app_colours.dart';

class CustomLinearLoader extends StatefulWidget {
  const CustomLinearLoader({Key? key}) : super(key: key);

  @override
  State<CustomLinearLoader> createState() => _CustomLinearLoaderState();
}

class _CustomLinearLoaderState extends State<CustomLinearLoader> {
  @override
  Widget build(BuildContext context) {
    return const LinearProgressIndicator(
      minHeight: 5,
      valueColor: AlwaysStoppedAnimation(AppColors.primary),
      backgroundColor: AppColors.primaryWhite,
      // value: 0.2,    // the progress bar sets value between 0.0 to 1.0
    );
  }
}