import 'package:flutter/material.dart';
import 'package:app/common/constants/app_colours.dart';

class MmCustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  bool isPassword;
  String errorText;
  Function? onTap;
  final int? maxLength;
  final TextCapitalization? textCapitalization;

  // final String textName;
  // final TextInputType? inputType;
  // late final bool? isPassword;
  // final TextEditingController valueController;
  // FocusNode? focusNode;
  // Function onChanged;
  // List<TextInputFormatter>? inputFormatters;
  // final int? maxLines;

  MmCustomTextField(this.hint, this.controller,
      {super.key, this.isPassword = false, this.errorText = "", this.onTap, this.keyboardType, this.maxLength,this.textCapitalization});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 55.0,
            child: TextField(
              controller: controller,
              keyboardType: keyboardType ?? TextInputType.text,
              textCapitalization :textCapitalization ?? TextCapitalization.none,
              style: const TextStyle(color: Colors.black, fontSize: 12.0),
              textAlign: TextAlign.left,
              maxLength: maxLength,
              decoration: InputDecoration(
                labelText: hint,
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
                // border: new OutlineInputBorder(
                //     borderSide: new BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: AppColors.COLOR_TEXT_FEILD_BORDER,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: AppColors.COLOR_TEXT_FEILD_BORDER,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: AppColors.COLOR_TEXT_FEILD_BORDER,
                    width: 1.0,
                  ),
                ),
              ),
              //   decoration: InputDecoration(
              //   hintText: hint,
              //   hintStyle: TextStyle(color: _appColors.COLOR_GREY),
              //   filled: true,
              //   fillColor: Color(0xffF5F5F5),
              //   enabledBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(24.0)),
              //     borderSide: BorderSide(color: Colors.transparent, width: 0),
              //   ),
              //   focusedBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(24.0)),
              //     borderSide: BorderSide(color: Colors.transparent, width: 0.0),
              //   ),
              // ),
              obscureText: isPassword,
              // onTap: onTap,
            ),
          ),
          Visibility(
            visible: null != errorText && errorText.length > 0,
            child: Text(errorText,
                style: const TextStyle(color: Colors.red, fontSize: 10.0)),
          )
        ],
      ),
    );
  }
}
