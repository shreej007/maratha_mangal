import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/common/constants/app_colours.dart';

class DashboardCard extends StatelessWidget {

  String title;
  int position;

  DashboardCard(this.title, this.position, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width / 3.5,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              position == 1
                  ? CupertinoIcons.home
                  : position == 2
                      ? CupertinoIcons.heart
                      : position == 3
                          ? CupertinoIcons.list_bullet_below_rectangle
                          : position == 4
                              ? CupertinoIcons.home
                              : position == 5
                                  ? CupertinoIcons.heart
                                  : CupertinoIcons.person,
              color: AppColors.theameColorRed,
              size: 30.0,
            ),
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12.0),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
