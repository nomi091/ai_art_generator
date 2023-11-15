import 'package:ai_art_generator/view/Widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UpgradeScreenTwo extends StatefulWidget {
  const UpgradeScreenTwo({Key? key}) : super(key: key);

  @override
  State<UpgradeScreenTwo> createState() => _UpgradeScreenTwoState();
}

class _UpgradeScreenTwoState extends State<UpgradeScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Choose Your Plan ',
            style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 24,
                fontWeight: FontWeight.w700),
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // style: TextStyle(
            //                         color: Colors.white,
            //                         fontSize: 24,
            //                         fontWeight: FontWeight.w700),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                  itemBuilder: (context, index) {

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                      child: Container(
                        width: 382,
                        height: 94,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFAFAFA),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ListTile(
                              title: const Text(
                                '1 Months'
                                    '',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700),
                              ),
                              subtitle: const Text(
                                '100 credits',
                                style: TextStyle(
                                    color: Color(0xFF616161),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),

// trailing: Icon(Icons.circle_outlined),

                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    '\$7.00'
                                        '',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Radio(
                                    activeColor: const Color(0xFF1EB9CE),
                                    value: true,
                                    groupValue: true,
                                    onChanged: (value) {},
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );



                  },),
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
                child: CustomButton(title: 'Continue',isloading: false,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
