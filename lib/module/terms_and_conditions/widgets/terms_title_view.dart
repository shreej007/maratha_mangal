import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/common/constants/app_colours.dart';

class TermsTitleView extends StatelessWidget {

  String title;

  TermsTitleView(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left:4.0, right: 4.0),
            child: Icon(
              Icons.check_circle,
              color: AppColors.theameColorRed,
              size: 18.0,
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
