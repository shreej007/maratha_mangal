
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/module/faq/faq_binding.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  FaqState createState() => FaqState();
}

class FaqState extends State<FaqScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FaqController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text("Faq"),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child:  Column(
              children: [Text("Faq")],
            ),
          ),
        ),
      )
    );
  }
}
