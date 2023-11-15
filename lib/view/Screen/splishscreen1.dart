import 'dart:async';

import 'package:ai_art_generator/view/Screen/splishscreenthird.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplishFirstScreen extends StatefulWidget {
  const SplishFirstScreen({Key? key}) : super(key: key);

  @override
  State<SplishFirstScreen> createState() => _SplishFirstScreenState();
}

class _SplishFirstScreenState extends State<SplishFirstScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Get.to(const SplishSecondScreen());

    });



  }



  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(


backgroundColor: Color(0xFFFFFFFF),
        
      ),
    );
  }
}
