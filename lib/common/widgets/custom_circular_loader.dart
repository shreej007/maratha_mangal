import 'package:flutter/material.dart';

class CustomCircularLoader extends StatefulWidget {
  const CustomCircularLoader({Key? key}) : super(key: key);

  @override
  State<CustomCircularLoader> createState() => _CircularProgressState();
}

class _CircularProgressState extends State<CustomCircularLoader> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      shape:  const CircleBorder(),
      child: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffffffff),
        ),
        padding: const EdgeInsets.all(12),
        child: const CircularProgressIndicator(strokeWidth: 2.5, color: Color(0xfff17e33),),),
    );
  }
}
