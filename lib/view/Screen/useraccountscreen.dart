import 'package:ai_art_generator/view/Screen/privacyscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Authscreen/login_screen.dart';

class UserAccountScreen extends StatefulWidget {
  const UserAccountScreen({Key? key}) : super(key: key);

  @override
  State<UserAccountScreen> createState() => _UserAccountScreenState();
}

class _UserAccountScreenState extends State<UserAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F3F3),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp'),
                      radius: 70,
                    ),
                    Positioned(
                        top: 90,
                        bottom: -10,
                        right: 20,
                        child: GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF1EB9CE),
                            child: Icon(
                              Icons.photo_camera,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'UserName',
                style: TextStyle(
                  color: Color(0xFF1E2022),
                  fontSize: 20.49,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'You have 300 coins',
                style: TextStyle(
                  color: Color(0xFF77838F),
                  fontSize: 14.49,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 495,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.red[600],
                          child: Icon(
                            Icons.notification_important_rounded,
                            color: Colors.white,
                          )),
                      title: Text(
                        'Notificatons',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.defaultDialog(
                            title: '',
                            content: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 402,
                                      width: 307,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(35),
                                          color: Color(0xFFFFFFFF)),
                                    ),

                                    Positioned(
                                        top: 0,
                                        right: 0,
                                        child: GestureDetector(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: Icon(
                                            Icons.dangerous_outlined,
                                            color: Colors.black,
                                          ),
                                        )),

                                    Positioned(
                                      top: 40,
                                      left: 30,
                                      right: 30,
                                      child: Container(
                                        height: 65,
                                        width: 246,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(9),
                                          color: Color(0xFFF96D00),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.play_lesson,
                                              color: Colors.white,
                                              size: 50,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                                textAlign: TextAlign.justify,
                                                '''earn five coin by 
 watching ad''')
                                          ],
                                        ),
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 0,
                                      right: 30,
                                      left: 30,
                                      child: Container(
                                          height: 185,
                                          width: 246,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            color: Color(0xFF7A69EB),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Text(
                                                  'In this example,, which removes the default title'),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          9)),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 60),
                                                      backgroundColor:
                                                          Color(0xFFFFFFFF)),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Let's go",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF7A69EB)),
                                                  ))
                                            ],
                                          )),
                                    ),

                                    Positioned(
                                        bottom: 90,
                                        right: 50,
                                        left: 50,
                                        child: Image.asset('images/ads.png'))

//img ider set karnaa heeeee
                                  ], //stackwala
                                )
                              ],
                            ));
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Color(0xFF1EB9CE),
                            child: Icon(
                              Icons.play_circle_outline_sharp,
                              color: Colors.white,
                            )),
                        title: Text(
                          'Watch ads',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Icon(
                            Icons.screen_share_outlined,
                            color: Colors.white,
                          )),
                      title: Text(
                        'Share',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          Container(
                            height: 404,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(28),
                                    topRight: Radius.circular(28)),
                                color: Color(0xFFFFFFFF)),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/Frame.png',
                                  height: 178,
                                  width: 209,
                                ),



                                Container(
                                  height: 3,
                                  width: 327,
                                  color: Color(0xFFEEEEEE),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Rate Us',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                    'Recomend us to other by rating us on google '),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              backgroundColor:
                                                  Color(0xFF1EB9CE),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20,
                                                  horizontal: 40)),
                                          onPressed: () {

                                            Get.back();

                                          },
                                          child: Center(
                                              child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text('cancel  '),
                                          ))),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              backgroundColor:
                                                  Color(0xFF1EB9CE),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20,
                                                  horizontal: 40)),
                                          onPressed: () {},
                                          child: Center(
                                              child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text('Rate Now  '),
                                          ))),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.star,
                              color: Colors.white,
                            )),
                        title: Text(
                          'Ratings',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.yellow[600],
                          child: Icon(
                            Icons.contact_support_outlined,
                            color: Colors.white,
                          )),
                      title: Text(
                        'Contact Us',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(PrivacyScreen());
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.deepPurpleAccent[200],
                            child: Icon(
                              Icons.privacy_tip_outlined,
                              color: Colors.white,
                            )),
                        title: Text(
                          'Privacy policy',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(Container(
                          width: 375,
                          height: 271,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(28),
                                topLeft: Radius.circular(28),
                              ),
                              color: Color(0xFFFFFFFF)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 3,
                                width: 38,
                                color: Color(0xFFE0E0E0),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Logout',
                                style: TextStyle(
                                    color: Color(0xFFF75555),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 3,
                                width: 327,
                                color: Color(0xFFEEEEEE),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Are you sure you want to log out?',
                                style: TextStyle(
                                    color: Color(0xFF424242),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              backgroundColor:
                                                  Color(0xFF1EB9CE),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20,
                                                  horizontal: 40)),
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: Center(
                                              child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text('cancel  '),
                                          ))),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              backgroundColor:
                                                  Color(0xFF1EB9CE),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20,
                                                  horizontal: 40)),
                                          onPressed: () {
                                            Get.to(LoginScreen());
                                          },
                                          child: Center(
                                              child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text('Yes Logout  '),
                                          ))),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ));
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.red[900],
                            child: Icon(
                              Icons.logout_sharp,
                              color: Colors.white,
                            )),
                        title: Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
