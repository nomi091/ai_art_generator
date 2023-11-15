import 'dart:async';

import 'package:ai_art_generator/view/Screen/onboardingffirstscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplishSecondScreen extends StatefulWidget {
  const SplishSecondScreen({Key? key}) : super(key: key);

  @override
  State<SplishSecondScreen> createState() => _SplishSecondScreenState();
}

class _SplishSecondScreenState extends State<SplishSecondScreen> {

  @override
  void initState() {
    // TODO: implement initState

    Timer(const Duration(seconds: 4), () {

      Get.to(const OnboardFirsttScreen());


    });
  }

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://e7.pngegg.com/pngimages/352/83/png-clipart-round-spider-man-face-logo-spider-man-venom-youtube-flash-thompson-deadpool-spider-man-heroes-superhero.png',
              ),

             radius: 80,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'App Name',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 22.66,
                letterSpacing: 1,
              ),
            ),
          )
        ],
      )),
    );
  }
}
