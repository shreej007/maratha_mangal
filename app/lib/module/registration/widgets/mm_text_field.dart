import 'package:flutter/material.dart';
import 'package:app/common/constants/app_colours.dart';

class MMTextField extends StatelessWidget {
  String hint;
  TextEditingController controller;
  bool isPassword;
  String errorText;
  Function? onTap;

  MMTextField(this.hint, this.controller,
      {this.isPassword = false, this.errorText = "", this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 50.0,
          child: TextField(
            controller: controller,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              // prefixIcon: const Icon(
              //   Icons.person,
              //   color: Colors.white,
              // ),
              labelText: hint,
              labelStyle: const TextStyle(
                color: Colors.white,
              ),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: AppColors.ColorRedLight,
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 2.0,
                ),
              ),
            ),
            //   decoration: InputDecoration(
            //   hintText: _hint,
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
            // onTap: onTap!,
          ),
        ),
        Visibility(
          visible: null != errorText && errorText.length > 0,
          child: Text(errorText,
              style: const TextStyle(color: Colors.red, fontSize: 10.0)),
        )
      ],
    );
  }
}
