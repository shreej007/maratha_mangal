import 'package:flutter/material.dart';
import 'package:app/common/constants/app_colours.dart';

class ButtonSaveNextRed extends StatelessWidget {
  String _title;

  ButtonSaveNextRed(this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.theameColorRed,
          borderRadius: BorderRadius.circular(5.0)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(_title,
              style: TextStyle(color: Colors.white, fontSize: 18.0)),
        ),
      ),
    );
  }
}
