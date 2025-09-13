import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/app_colours.dart';

class CustomTextField extends StatefulWidget {
  final String textName;
  final TextInputType? inputType;
  late final bool? isPassword;
  final TextEditingController valueController;
  FocusNode? focusNode;
  Function onChanged;
  List<TextInputFormatter>? inputFormatters;
  final int? maxLines;


  CustomTextField(
      {Key? key,
      required this.textName,
      this.inputType,
      this.isPassword,
      required this.valueController,
      this.focusNode,
      required this.onChanged,
      this.inputFormatters,
      this.maxLines})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
      child: TextField(
        controller: widget.valueController,
        keyboardType: widget.inputType ?? TextInputType.text,
        obscureText: (widget.isPassword == true) ? hidePassword : false,
        obscuringCharacter: '*',
        focusNode: widget.focusNode ?? null,
        enabled: true,
        maxLines: widget.maxLines ?? 1,
        inputFormatters: widget.inputFormatters,
        textInputAction: TextInputAction.next,
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
            labelText: widget.textName,
            floatingLabelStyle:
                const TextStyle(fontSize: 15, color: AppColors.primaryDark),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.textDarkGrey),
                borderRadius: BorderRadius.circular(7)),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.textDarkGrey),
              borderRadius: BorderRadius.circular(7),
            ),
            suffixIcon: (widget.isPassword == true)
                ? Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: (){
                        setState(() {
                          if (widget.isPassword == true && hidePassword) {
                            hidePassword = false;
                          } else {
                            hidePassword = true;
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: hidePassword == true
                              ? SvgPicture.asset(
                                  "assets/images/login/view_password.svg",
                                )
                              : SvgPicture.asset(
                                  "assets/images/login/hide_password.svg",),
                        ),
                      ),
                    ),
                  )
                : null),
        textAlign: TextAlign.left,
        cursorColor: AppColors.primaryDark,
        onChanged: widget.onChanged(),
      ),
    );
  }
}
