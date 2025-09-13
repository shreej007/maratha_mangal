import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermsDescriptionView extends StatelessWidget {
  String title;

  TermsDescriptionView(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
