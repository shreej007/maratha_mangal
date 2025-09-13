
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:app/module/home/home_screen.dart';
import 'package:app/module/registration/registration_binding.dart';
import 'package:app/module/registration/registration_screen.dart';

class HomeController extends GetxController {

  // late AnimationController _controller ;
  final ScrollController _scrollController = ScrollController();
  late Timer _timer;

  final _selectedIndex = 0.0;

  @override
  void onInit() {
    super.onInit();
    // _timer = Timer.periodic(Duration(seconds: 3), (Timer timer)
    // {
    //   Future.delayed(const Duration(milliseconds: 500), () {
    //     _scrollController.animateTo(_selectedIndex,
    //         duration: Duration(milliseconds: 500), curve: Curves.linear);
    //   });
    //   _selectedIndex++;
    // });
  }


  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
