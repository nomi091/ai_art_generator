import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ArtWorkScreenTwo extends StatefulWidget {
  const ArtWorkScreenTwo({Key? key}) : super(key: key);

  @override
  State<ArtWorkScreenTwo> createState() => _ArtWorkScreenTwoState();
}

class _ArtWorkScreenTwoState extends State<ArtWorkScreenTwo> {
  bool showImage = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(Duration(seconds: 10), () {
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
            title: Text(
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
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 10),
                child: Text(
                  'Publish',
                  style: TextStyle(
                      color: Color(0xFF1EB9CE),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),



Expanded(
  child:   GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10
  
  
  
  
      ),
      itemBuilder: (context, index) {
        return  Stack(
          children: [
            Container(
              width: 183,
              height: 183,
              decoration: BoxDecoration(
                  image: DecorationImage(
  
                      image: NetworkImage('https://images.unsplash.com/photo-1615022702095-ff2c036f3360?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
  
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF5F5F5)),
            ),
  
            Positioned(
                bottom: 0,
                child: Icon(
                  Icons.download_for_offline_sharp,
                  color: Color(0xFF1EB9CE),
                  size: 30,
                )),
  
            Positioned(
              top: 0,
              right: 0,
              child: Radio(
                  activeColor: Color(0xFF1EB9CE),
                  value: true,
                  groupValue: true,
                  onChanged: (val) {}),
            )
  
  
          ],
        );
      },),
),










                SizedBox(
                  height: 20,
                ),
                // Expanded(
                //   child: ListView.builder(
                //     itemCount: 5,
                //     scrollDirection: Axis.horizontal,
                //     itemBuilder: (context, index) {
                //       return !showImage?Padding(
                //         padding: const EdgeInsets.only(left: 8),
                //         child: Container(
                //           height: 84,
                //           width: 83.5,
                //           decoration: BoxDecoration(
                //
                //
                //               borderRadius: BorderRadius.circular(10),
                //               color: Color(0xFFF5F5F5)),
                //           child: Center(child: CircularProgressIndicator()),
                //         ),
                //       ):Padding(
                //         padding: const EdgeInsets.only(left: 8),
                //         child: Container(
                //           height: 84,
                //           width: 83.5,
                //           decoration: BoxDecoration(
                //               image: DecorationImage(
                //
                //                   image: NetworkImage('https://loveshayariimages.in/wp-content/uploads/2023/01/girl-cartoon-sad-dp-for-whatsapp.jpg')
                //                   ,
                //                   fit: BoxFit.cover
                //
                //               ),
                //               borderRadius: BorderRadius.circular(10),
                //               color: Color(0xFFF5F5F5)),
                //         ),
                //       );
                //     },
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 44,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7),
                            bottomLeft: Radius.circular(7),
                          ),
                          color: Color(0xFF1EB9CE)),
                      child: Icon(
                        Icons.local_printshop_sharp,
                        color: Colors.white,
                      ),
                    ),

                    Container(
                      height: 44,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(7),
                            bottomRight: Radius.circular(7),
                          ),
                          color: Color(0xFF1EB9CE)),
                      child: Icon(
                        Icons.local_printshop_sharp,
                        color: Colors.white,
                      ),
                    ),

                    //
                  ],
                ),
                SizedBox(
                  height: 20,
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
                          children: [
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
                    SizedBox(
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
                          children: [
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
                    SizedBox(
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
                          children: [
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
                    SizedBox(
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
                          children: [
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
                    SizedBox(
                      width: 5,
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
