import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:ai_art_generator/view/Widget/button.dart';
import 'package:ai_art_generator/view/Widget/inputtextfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/constants/constant_size.dart';
import '../../utils/routes/routes.dart';
import '../../view_model/auth_view_model/auth_view_model.dart';
import '../Widget/custom_app_bar.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> authSignUpForm = GlobalKey<FormState>();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // You can use the context here
      final authController = Provider.of<AuthViewModel>(context, listen: false);
      authController.clear();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: CustomAppBar(
          onTapBack: () {
            Navigator.pop(context);
          },
          height: ConstantSize.getScaleHeight(context) * 60,
          title: 'Back',
   
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child:
                Consumer<AuthViewModel>(builder: (context, controller, child) {
              return Form(
                key: authSignUpForm,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Welcome', style: MyTextStyles.bold20black),
                        SizedBox(
                          height: ConstantSize.getScaleHeight(context) * 10,
                        ),
                        Image.network(
                          'https://p7.hiclipart.com/preview/596/860/835/know-your-emoji-noto-fonts-emojipedia-greeting-hand-saw.jpg',
                          height: 32,
                          width: 32,
                        )
                      ],
                    ),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 10,
                    ),
                    const Text(
                        'Please enter your email and password to sign in.'),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 20,
                    ),
                    InputTextField(
                      obsecure: false,
                      controller: controller.nameController,
                      labeltext: 'Name',
                      hinttext: 'Name',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      suffixicon: const Icon(Icons.person_outline),
                    ),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 20,
                    ),
                    InputTextField(
                      obsecure: false,
                      controller: controller.signUpEmailcontroller,
                      labeltext: 'Email',
                      hinttext: 'Email',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        return null;
                      },
                      suffixicon: const Icon(Icons.email_outlined),
                    ),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 20,
                    ),
                    InputTextField(
                      obsecure: controller.obsecured,
                      controller: controller.signpasswordcontroller,
                      labeltext: 'Password',
                      hinttext: 'Password',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        if (value.length < 8) {
                          return 'Password must contans 8 charecters';
                        }
                        return null;
                      },
                      suffixicon: IconButton(
                          onPressed: () {
                            controller.obsecured = !controller.obsecured;
                            setState(() {});
                          },
                          icon: controller.obsecured
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility)),
                    ),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 20,
                    ),
                    InputTextField(
                      obsecure: controller.obsecured,
                      controller: controller.confirmPasswordController,
                      labeltext: 'Password',
                      hinttext: 'Password',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field can\'t be empty';
                        }
                        if (value != controller.signpasswordcontroller.text) {
                          return 'Confrim password mismath';
                        }
                        return null;
                      },
                      suffixicon: IconButton(
                          onPressed: () {
                            controller.obsecured = !controller.obsecured;
                            setState(() {});
                          },
                          icon: controller.obsecured
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility)),
                    ),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 20,
                    ),
                    InputTextField(
                      obsecure: false,
                      controller: controller.refrelController,
                      labeltext: 'Referl Code',
                      hinttext: 'Refer Code',
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return 'Field can\'t be empty';
                      //   }
                      //   return null;
                      // },
                      suffixicon: const Icon(Icons.person_add_alt),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: controller.rememberme,
                          onChanged: (newValue) {
                            // Update the 'rememberMe' value when checkbox is toggled
                            controller.rememberme = newValue!;
                            setState(() {});
                          },
                        ),
                        const Text('Remember Me'),
                      ],
                    ),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 20,
                    ),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(child: Text("Already have an account?\t")),
                        SizedBox(
                          height: ConstantSize.getScaleHeight(context) * 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, ScreenRoutes.logIn);
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Color(0xFF1EB9CE),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 20,
                    ),
                    GestureDetector(
                        onTap: () {
                          if (authSignUpForm.currentState!.validate()) {
                            controller.signUpApi(context);
                          }
                        },
                        child:  CustomButton(title: 'Sign Up')),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 20,
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
