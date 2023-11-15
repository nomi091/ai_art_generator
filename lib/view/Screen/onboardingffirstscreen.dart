import 'package:ai_art_generator/view/Screen/onboardingsecondscreen.dart';
import 'package:ai_art_generator/view/Widget/button.dart';
import 'package:ai_art_generator/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widget/circleavatoronboradingscreen.dart';

class OnboardFirsttScreen extends StatelessWidget {
  const OnboardFirsttScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Select Your Creator',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700),
          ),
          elevation: 0,
          backgroundColor: backgroundscreencolors,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 15,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return circleAvatorOnboard();
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                    onTap: (){
Get.to(OnboardingSecondScreen());
                    },

                    child: CustomButton(title: 'Next',)),
              )

            ],
          ),
        ),
      ),
    );
  }
}
