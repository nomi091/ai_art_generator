import 'package:ai_art_generator/view/Widget/button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../utils/constants/constant_size.dart';
import '../../utils/routes/routes.dart';
import '../Widget/custom_app_bar.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController emaillcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          onTapBack: () {
            Navigator.pop(context);
          },
          height: ConstantSize.getHeight(context) * 0.05,
          title: 'Back',

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'OTP code verification',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Urbanist'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF4ShRR-9p6M3QUP66GdFdKCRs4RdNudhBcbJHkUhB2XhbM-qCE-EFRixP3vzZCRACtN8&usqp=CAU',
                        height: 32,
                        width: 32,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'We have sent OTP code to your email '
                    'and *********ley@yourdomain.com. Enter the OTP'
                    'code below to verify',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Urbanist',
                        letterSpacing: 0.2),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Pinput(
                    length: 4,
                    focusedPinTheme: PinTheme(
                        width: 83.5,
                        height: 70,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blue, width: 1.0))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("Didn't receive email?"),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("You can resend code in 55 s"),
                  const SizedBox(height: 310),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, ScreenRoutes.setNewPassword);
                      },
                      child:  CustomButton(title: 'Continues'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
