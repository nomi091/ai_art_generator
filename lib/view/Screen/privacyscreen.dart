import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constant.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundscreencolors,
        appBar: AppBar(
          backgroundColor: backgroundscreencolors,
          title: const Text(
            'Privacy Policy ',
            style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 40,
                ),
                Text(
                  textAlign: TextAlign.justify,
                  ''' A Privacy Policy for a mobile application outlines how the app collects, uses, shares, and manages user data. It's a legal document that informs users about their privacy rights and explains how their personal information will be handled by the app owner or developer. Here are some common components that a Privacy Policy for a mobile application might include:''',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Information Collected:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
                Text(
                  textAlign: TextAlign.justify,
                  '''
 A Privacy Policy for a mobile application outlines how the app collects, uses, shares, and manages user data. It's a legal document that informs users about their privacy rights and explains how their personal information will be handled by the app owner or developer. Here are some common components that a Privacy Policy for a mobile application might include:''',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Information Collected:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
                Text(
                  textAlign: TextAlign.justify,
                  ''' A Privacy Policy for a mobile application outlines how the app collects, uses, shares, and manages user data. It's a legal document that informs users about their privacy rights and explains how their personal information will be handled by the app owner or developer. Here are some common components that a Privacy Policy for a mobile application might include:''',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Information Collected:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
                Text(
                  textAlign: TextAlign.justify,
                  '''A Privacy Policy for a mobile application outlines how the app collects, uses, shares, and manages user data. It's a legal document that informs users about their privacy rights and explains how their personal information will be handled by the app owner or developer. Here are some common components that a Privacy Policy for a mobile application might include:''',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Information Collected:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
                Text(
                  textAlign: TextAlign.justify,
                  ''' A Privacy Policy for a mobile application outlines how the app collects, uses, shares, and manages user data. It's a legal document that informs users about their privacy rights and explains how their personal information will be handled by the app owner or developer. Here are some common components that a Privacy Policy for a mobile application might include:''',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Information Collected:',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),
                Text(
                  textAlign: TextAlign.justify,
                  ''' A Privacy Policy for a mobile application outlines how the app collects, uses, shares, and manages user data. It's a legal document that informs users about their privacy rights and explains how their personal information will be handled by the app owner or developer. Here are some common components that a Privacy Policy for a mobile application might include:''',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
