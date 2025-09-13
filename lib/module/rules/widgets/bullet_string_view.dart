import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/common/constants/app_colours.dart';

class BulletStringView extends StatelessWidget {

  String title;
  String flag;

  BulletStringView(this.title, this.flag, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:4.0, right: 4.0),
            child: Icon(
              flag == "terms" ?
              Icons.cancel
              : Icons.check_circle,
              color: AppColors.theameColorRed,
              size: 18.0,
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(color: Colors.black, fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
