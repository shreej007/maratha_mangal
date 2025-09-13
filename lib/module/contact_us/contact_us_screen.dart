
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/module/contact_us/contact_us_binding.dart';
class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  ContactUsState createState() => ContactUsState();
}

class ContactUsState extends State<ContactUsScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactUsController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text("Contact Us"),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child:  Column(
              children: [Text("Contact Us")],
            ),
          ),
        ),
      )
    );
  }
}
