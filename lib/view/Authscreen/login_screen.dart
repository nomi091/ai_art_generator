import 'package:ai_art_generator/utils/constants/constant_size.dart';
import 'package:ai_art_generator/view/Widget/button.dart';
import 'package:ai_art_generator/view/Widget/inputtextfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/constants/colors.dart';
import '../../utils/routes/routes.dart';
import '../../view_model/auth_view_model/auth_view_model.dart';
import '../Widget/custom_app_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> authLogInForm = GlobalKey<FormState>();

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
          height: ConstantSize.getScaleHeight(context) * 88,
          title: 'Back',

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child:
                Consumer<AuthViewModel>(builder: (context, controller, child) {
              return Form(
                key: authLogInForm,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Welcome', style: MyTextStyles.bold20black),
                        SizedBox(
                          width: ConstantSize.getScaleHeight(context) * 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 20,
                    ),
                    const Text(
                        'Please enter your email and password to sign in.'),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 20,
                    ),
                    InputTextField(
                      obsecure: false,
                      controller: controller.logiEmailcontroller,
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
                      controller: controller.loginPasswordcontroller,
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
                    Center(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, ScreenRoutes.resetPassword);
                            },
                            child:  Text(
                              'Forget Password?',
                              style: MyTextStyles.bold18Primary
                            ))),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(child: Text("Don't have an account?\t")),
                        SizedBox(
                          height: ConstantSize.getScaleHeight(context) * 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, ScreenRoutes.signUpScreen);
                            },
                            child: Text('Sign Up',
                                style: MyTextStyles.bold18Primary))
                      ],
                    ),
                    SizedBox(
                      height: ConstantSize.getScaleHeight(context) * 20,
                    ),
                    GestureDetector(
                        onTap: () {
                          if (authLogInForm.currentState!.validate()) {
                            controller.loginApi(context);
                          }
                        },
                        child:  CustomButton(title: 'Sign In')),
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
