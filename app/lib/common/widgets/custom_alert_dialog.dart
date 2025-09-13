
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_images.dart';
import '../constants/app_strings.dart';
class CustomAlertDialog extends StatefulWidget {
  final String? title;
  final String? description;
  final String? negativeButtonText ;
  final String? positiveButtonText;
  Function onPositiveClick;
  Function onNegativeClick;

  CustomAlertDialog({
    Key? key,
    this.title,
    this.description,
    this.negativeButtonText,
    this.positiveButtonText,
    required this.onNegativeClick,
    required this.onPositiveClick
  }) : super(key: key);

  @override
  State<CustomAlertDialog> createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        margin: const EdgeInsets.all(0.0),
        child: Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 10),
                child: Text(widget.title??AppStrings.logOut,textAlign: TextAlign.left, style: const TextStyle(fontSize: 16),),
              ),

              SvgPicture.asset(AppImages.line, fit:BoxFit.fitWidth,)
            ],
          ),
        ),
      ),
      content:  Text(widget.description??AppStrings.logOutDesc, style: const TextStyle(fontSize: 16),
        // style: TextStyle(fontFamily: 'Schyler'),
      ),
      elevation: 2,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      actions: [
        TextButton(onPressed: widget.onPositiveClick(),
          style: const ButtonStyle( backgroundColor:
          MaterialStatePropertyAll<Color>(Colors.white),), child: Text(widget.negativeButtonText??AppStrings.cancel, style: const TextStyle(color: Colors.black45),),
        ),
        const SizedBox(width: 30,),
        TextButton(onPressed: widget.onNegativeClick(),
          style:  const ButtonStyle( backgroundColor:
          MaterialStatePropertyAll<Color>(Colors.orange),), child: Text(widget.positiveButtonText??AppStrings.done, style: const TextStyle(color: Colors.white), ),),
        const SizedBox(width: 20,),
      ],
    );
  }
}