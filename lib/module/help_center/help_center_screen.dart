
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/module/contact_us/contact_us_binding.dart';
import 'package:app/module/help_center/help_center_binding.dart';
class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  HelpCenterState createState() => HelpCenterState();
}

class HelpCenterState extends State<HelpCenterScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HelpCenterController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text("Help Center"),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child:  Column(
              children: [Text("Help Center")],
            ),
          ),
        ),
      )
    );
  }
}
