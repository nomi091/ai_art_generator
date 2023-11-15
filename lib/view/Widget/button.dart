import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  bool isloading;
   CustomButton({Key? key, required this.title,this.isloading=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 55,
        width: 343,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(81), color: AppColors.primaryColor),
        child: Center(child:isloading?
        const CircularProgressIndicator(color: AppColors.whiteColor,):
         Text(title,style:MyTextStyles.medium16white ,)),
      ),
    );
  }
}
