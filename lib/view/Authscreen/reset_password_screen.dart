import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:ai_art_generator/view/Widget/button.dart';
import 'package:ai_art_generator/view/Widget/inputtextfield.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/constant_size.dart';
import '../../utils/routes/routes.dart';
import '../Widget/custom_app_bar.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController emaillcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          onTapBack: () {
            Navigator.pop(context);
          },
          height: ConstantSize.getScaleHeight(context) * 80,
          title: '',
  
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Reset your password', style: MyTextStyles.bold20black),
                  SizedBox(
                    height: ConstantSize.getScaleHeight(context) * 10,
                  ),
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/512/4382/4382320.png',
                    height: 32,
                    width: 32,
                  )
                ],
              ),
              SizedBox(
                height: ConstantSize.getScaleHeight(context) * 20,
              ),
              Text(
                  'please enter your email and we will '
                  'send an OTP code in the next step to reset '
                  'your password',
                  style: MyTextStyles.regular17black),
              SizedBox(
                height: ConstantSize.getScaleHeight(context) * 30,
              ),
              InputTextField(
                  obsecure: false,
                  controller: emaillcontroller,
                  labeltext: "Email",
                  hinttext: "andrew.ainsley@yourdomain.com",
                  suffixicon: const Icon(Icons.email_outlined)),
                  SizedBox(height:ConstantSize.getScaleHeight(context)*350 ,),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, ScreenRoutes.setNewPassword);
                  },
                  child:  CustomButton(title: 'Continues')),
            ],
          ),
        ),
      ),
    );
  }
}
