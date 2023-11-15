import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:ai_art_generator/view/Widget/button.dart';
import 'package:ai_art_generator/view/Widget/inputtextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/constant_size.dart';
import '../Widget/custom_app_bar.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({Key? key}) : super(key: key);

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  TextEditingController passwordcontrollerr = TextEditingController();
  TextEditingController confrompasswordcontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
       appBar: CustomAppBar(
        onTapBack: () {
          Navigator.pop(context);
        },
        height: ConstantSize.getScaleHeight(context) * 80,
        title: 'Back',
  
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                   Text(
                    'Create your password',
                    style: MyTextStyles.bold20black
                  ),
                   SizedBox(
                        width: ConstantSize.getScaleWidth(context)*10,
                      ),
                  Image.network(
                    'https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/3164707/lock-clipart-md.png',
                    height: 30,
                    width: 30,
                  )
                ],
              ),
              SizedBox(
                        height: ConstantSize.getScaleHeight(context)*20,
                      ),
               Text(
                'Create your new password. If you forget it.Then'
                ' you have to do forget password.',
                style:MyTextStyles.regular17black
              ),
               SizedBox(
                        height: ConstantSize.getScaleHeight(context)*30,
                      ),
              InputTextField(
                  obsecure: true,
                  controller: passwordcontrollerr,
                  labeltext: "New Password",
                  hinttext: 'New Password',
                  suffixicon: const Icon(Icons.visibility)),
             SizedBox(
                        height: ConstantSize.getScaleHeight(context)*20,
                      ),
              InputTextField(
                  obsecure: true,
                  controller: confrompasswordcontroler,
                  labeltext: "Confrom New Password",
                  hinttext: 'Conform New Password',
                  suffixicon: const Icon(Icons.visibility)),
               SizedBox(
                        height: ConstantSize.getScaleHeight(context)*150,
                      ),
              GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                      title: 'Reset successfull!',
                      //middleText: 'please wait\n you will be directed to the home page',
                      content: Column(
                        children:  [
                          const Icon(
                            Icons.lock_open,
                            size: 80.0,
                            color: Colors.green,
                          ),
                         SizedBox(
                        height: ConstantSize.getScaleHeight(context)*10,
                      ),
                          const Text(
                            'Please wait. You will be directed to the home page.',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                  child: GestureDetector(
                      onTap: (){


                      },

                      child:  CustomButton(title: 'Continues')))
            ],
          ),
        ),
      ),
    );
  }
}
