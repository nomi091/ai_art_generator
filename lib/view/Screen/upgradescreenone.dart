import 'package:ai_art_generator/view/Widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UpgradeScreenOne extends StatefulWidget {
  const UpgradeScreenOne({Key? key}) : super(key: key);

  @override
  State<UpgradeScreenOne> createState() => _UpgradeScreenOneState();
}

class _UpgradeScreenOneState extends State<UpgradeScreenOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          // title: Text(
          //   'Post ',
          //   style: TextStyle(
          //       color: Color(0xFF212121),
          //       fontSize: 24,
          //       fontWeight: FontWeight.bold),
          // ),
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 382,
              height: 120,
              decoration: const BoxDecoration(
                  color: Color(0xFF1EB9CE),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  )),
              child: Column(
                children: const [
                  Text(
                    'UPGRADE TO PRO',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '''Enjoy all feature and benifites without any
                               restection''',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.5),
                  ),
                ],
              ),
            ),
            Container(
              width: 382,
              height: 485,
              decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),

              child: SingleChildScrollView(
                child: Column(


                  children: const [


                    ListTile(


                      leading: Icon(Icons.check_circle_outline_outlined,color: Colors.black,),
                      title: Text('Remove Ads',style: TextStyle(

                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),),
                    ),
                    ListTile(


                      leading: Icon(Icons.check_circle_outline_outlined,color: Colors.black),
                      title: Text('Unlimited Artwork Creatioin',style: TextStyle(

                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),),
                    ),
                    ListTile(


                      leading: Icon(Icons.check_circle_outline_outlined,color: Colors.black),
                      title: Text('Faster Processing Times',style: TextStyle(

                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),),
                    ),
                    ListTile(


                      leading: Icon(Icons.check_circle_outline_outlined,color: Colors.black),
                      title: Text('Download High Resolution Artwork',style: TextStyle(

                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),),
                    ),
                    ListTile(


                      leading: Icon(Icons.check_circle_outline_outlined,color: Colors.black),
                      title: Text('Access to Advanced AI Models',style: TextStyle(

                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),),
                    ),
                    ListTile(


                      leading: Icon(Icons.check_circle_outline_outlined,color: Colors.black),
                      title: Text('Premium Styles',style: TextStyle(

                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),),
                    ),
                    ListTile(


                      leading: Icon(Icons.check_circle_outline_outlined,color: Colors.black),
                      title: Text('More Aspect Ratio',style: TextStyle(

                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),),
                    ),
                    ListTile(


                      leading: Icon(Icons.check_circle_outline_outlined,color: Colors.black),
                      title: Text('Priority Queue',style: TextStyle(

                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),),
                    ),
                    ListTile(


                      leading: Icon(Icons.check_circle_outline_outlined,color: Colors.black),
                      title: Text('Proiority Customer Support',style: TextStyle(

                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),),
                    ),
                    ListTile(


                      leading: Icon(Icons.check_circle_outline_outlined,color: Colors.black),
                      title: Text('Priority Access to New Features',style: TextStyle(

                          fontWeight: FontWeight.w500,
                          fontSize: 18
                      ),),
                    ),
                    ListTile(


                      leading: Icon(Icons.check_circle_outline_outlined,color: Colors.black),
                      title: Text('Commercial Use Rights',style: TextStyle(

                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),),
                    ),





                  ],




                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5), borderRadius: BorderRadius.only()),
              child:  Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: CustomButton(title: 'Upgrade to PRO'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
