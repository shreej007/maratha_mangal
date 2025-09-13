
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/module/contact_us/contact_us_binding.dart';
import 'package:app/module/membership/membership_binding.dart';
class MembershipScreen extends StatefulWidget {
  const MembershipScreen({Key? key}) : super(key: key);

  @override
  MembershipState createState() => MembershipState();
}

class MembershipState extends State<MembershipScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MembershipController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text("Membership"),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child:  Column(
              children: [Text("Membership")],
            ),
          ),
        ),
      )
    );
  }
}
