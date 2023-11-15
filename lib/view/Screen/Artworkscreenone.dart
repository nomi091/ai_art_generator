import 'dart:async';

import 'package:ai_art_generator/view/Screen/publishscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ArtWorkScreenOne extends StatefulWidget {
  const ArtWorkScreenOne({Key? key}) : super(key: key);

  @override
  State<ArtWorkScreenOne> createState() => _ArtWorkScreenOneState();
}

class _ArtWorkScreenOneState extends State<ArtWorkScreenOne> {
  bool showImage = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(const Duration(seconds: 6), () {
      setState(() {
        showImage = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'ArtWork',
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
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 10),
                child: GestureDetector(
                  onTap: () {
                    Get.to(const PublishScreen());
                  },
                  child: const Text(
                    'Publish',
                    style: TextStyle(
                        color: Color(0xFF1EB9CE),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),

//                 Stack(
//                   children: [
//                     Container(
//                       width: 382,
//                       height: 382,
//                       decoration: BoxDecoration(
//
//
//                           borderRadius: BorderRadius.circular(20),
//                           color: Color(0xFFF5F5F5)),
//                     ),
//
//                     // Positioned(
//                     //     bottom: 0,
//                     //     child: Icon(
//                     //       Icons.download_for_offline_sharp,
//                     //       color: Color(0xFF1EB9CE),
//                     //       size: 40,
//                     //     )),
//
//                     // Positioned(
//                     //   top: 0,
//                     //   right: 0,
//                     //   child: Radio(
//                     //       activeColor: Color(0xFF1EB9CE),
//                     //       value: true,
//                     //       groupValue: true,
//                     //       onChanged: (val) {}),
//                     // )
//
// //                   Positioned(
// // top: 40,
// //                     child: Container(
// //
// //
// //                       width: 100,
// //                       height: 30,
// //                       decoration: BoxDecoration(
// //
// //                           borderRadius: BorderRadius.circular(20),
// //
// //
// //
// //                           color: Colors.red
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //                       ),
// //
// //
// //
// //
// //                     ),
// //                   ),
//                   ],
//                  ),

                !showImage
                    ? Container(
                        width: 382,
                        height: 382,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFF5F5F5)),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            CircularProgressIndicator(),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Text(
                                'Generating...',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        )),
                      )
                    : Stack(
                        children: [
                          Container(
                            width: 382,
                            height: 382,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage('https://loveshayariimages.in/wp-content/uploads/2023/01/girl-cartoon-sad-dp-for-whatsapp.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFFF5F5F5)),
                          ),

                          const Positioned(
                              bottom: 0,
                              child: Icon(
                                Icons.download_for_offline_sharp,
                                color: Color(0xFF1EB9CE),
                                size: 40,
                              )),

                          // Positioned(
                          //   top: 0,
                          //   right: 0,
                          //   child: Radio(
                          //       activeColor: Color(0xFF1EB9CE),
                          //       value: true,
                          //       groupValue: true,
                          //       onChanged: (val) {}),
                          // )

//                   Positioned(
// top: 40,
//                     child: Container(
//
//
//                       width: 100,
//                       height: 30,
//                       decoration: BoxDecoration(
//
//                           borderRadius: BorderRadius.circular(20),
//
//
//
//                           color: Colors.red
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//                       ),
//
//
//
//
//                     ),
//                   ),
                        ],
                      ),

                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return !showImage
                          ? Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                height: 84,
                                width: 83.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFF5F5F5)),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                height: 84,
                                width: 83.5,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            'https://loveshayariimages.in/wp-content/uploads/2023/01/girl-cartoon-sad-dp-for-whatsapp.jpg'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFF5F5F5)),
                              ),
                            );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //it remove by designer
                // Row(
                //   children: [
                //     Container(
                //       height: 44,
                //       width: 60,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.only(
                //             topLeft: Radius.circular(7),
                //             bottomLeft: Radius.circular(7),
                //           ),
                //           color: Color(0xFF1EB9CE)),
                //       child: Icon(
                //         Icons.local_printshop_sharp,
                //         color: Colors.white,
                //       ),
                //     ),
                //
                //     Container(
                //       height: 44,
                //       width: 60,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.only(
                //             topRight: Radius.circular(7),
                //             bottomRight: Radius.circular(7),
                //           ),
                //           color: Color(0xFF1EB9CE)),
                //       child: Icon(
                //         Icons.local_printshop_sharp,
                //         color: Colors.white,
                //       ),
                //     ),
                //
                //     //
                //   ],
                // ),//remove b//remo
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                        height: 98,
                        width: 87,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurpleAccent.withOpacity(0.2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.refresh,
                              color: Color(0xFF1EB9CE),
                            ),
                            Center(
                              child: Text(
                                'Re-',
                                style: TextStyle(
                                    color: Color(0xFF1EB9CE),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              ),
                            ),
                            Center(
                              child: Text('generate',
                                  style: TextStyle(
                                      color: Color(0xFF1EB9CE),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12)),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 98,
                        width: 87,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurpleAccent.withOpacity(0.2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.fullscreen,
                              color: Color(0xFF1EB9CE),
                            ),
                            Center(
                              child: Text(
                                'Up-',
                                style: TextStyle(
                                    color: Color(0xFF1EB9CE),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              ),
                            ),
                            Center(
                              child: Text('Scale',
                                  style: TextStyle(
                                      color: Color(0xFF1EB9CE),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12)),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 98,
                        width: 87,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurpleAccent.withOpacity(0.2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.do_not_disturb_on_outlined,
                              color: Color(0xFF1EB9CE),
                            ),
                            Center(
                              child: Text(
                                'BG-',
                                style: TextStyle(
                                    color: Color(0xFF1EB9CE),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              ),
                            ),
                            Center(
                              child: Text('Remove',
                                  style: TextStyle(
                                      color: Color(0xFF1EB9CE),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12)),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 98,
                        width: 87,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurpleAccent.withOpacity(0.2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.cloud_download_outlined,
                              color: Color(0xFF1EB9CE),
                            ),
                            Center(
                              child: Text(
                                'Up-',
                                style: TextStyle(
                                    color: Color(0xFF1EB9CE),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                              ),
                            ),
                            Center(
                              child: Text('Scale',
                                  style: TextStyle(
                                      color: Color(0xFF1EB9CE),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12)),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )),
    );
  }
}
