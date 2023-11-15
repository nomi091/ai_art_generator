import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final bool obsecure;
  String? Function(String?)? validator;

  final String labeltext;
  final Widget suffixicon;
   InputTextField(
      {Key? key,
      this.obsecure = true,
        this.validator,
      required this.controller,
      required this.labeltext,
      required this.hinttext,
      required this.suffixicon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecure,
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hinttext,
        suffixIcon: suffixicon,
        hintStyle: MyTextStyles.regular13black,
        labelStyle: MyTextStyles.medium13black,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grayColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
          errorBorder: OutlineInputBorder(
              borderSide:  const BorderSide(
                width: 1.0,
                color: AppColors.redColor,
              ),
              borderRadius: BorderRadius.circular(
                8.0,
              ),
            ),
      ),
      validator: validator
    );
  }
}
