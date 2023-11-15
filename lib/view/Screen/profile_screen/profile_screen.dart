import 'package:ai_art_generator/utils/constants/constant_size.dart';
import 'package:ai_art_generator/utils/routes/routes.dart';
import 'package:ai_art_generator/view/Screen/privacyscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SizedBox(
                height: ConstantSize.getScaleHeight(context)*30,
              ),
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp'),
                      radius: 50,
                    ),
                    Positioned(
                        top: 90,
                        bottom: -10,
                        right: 20,
                        child: GestureDetector(
                          onTap: () {},
                          child: const CircleAvatar(
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
              const SizedBox(
                height: 10,
              ),
              const Text(
                'UserName',
                style: TextStyle(
                  color: Color(0xFF1E2022),
                  fontSize: 20.49,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'You have 300 coins',
                style: TextStyle(
                  color: Color(0xFF77838F),
                  fontSize: 14.49,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 495,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.red[600],
                          child: const Icon(
                            Icons.notification_important_rounded,
                            color: Colors.white,
                          )),
                      title: const Text(
                        'Notificatons',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const SizedBox(
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
                                          color: const Color(0xFFFFFFFF)),
                                    ),

                                    Positioned(
                                        top: 0,
                                        right: 0,
                                        child: GestureDetector(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: const Icon(
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
                                          color: const Color(0xFFF96D00),
                                        ),
                                        child: Row(
                                          children: const [
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
                                            color: const Color(0xFF7A69EB),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const SizedBox(
                                                height: 40,
                                              ),
                                              const Text(
                                                  'In this example,, which removes the default title'),
                                              const SizedBox(
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
                                                          const EdgeInsets.symmetric(
                                                              horizontal: 60),
                                                      backgroundColor:
                                                          const Color(0xFFFFFFFF)),
                                                  onPressed: () {},
                                                  child: const Text(
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
                      child: const ListTile(
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
                    const SizedBox(
                      height: 10,
                    ),
                    const ListTile(
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
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          Container(
                            height: 404,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(28),
                                    topRight: Radius.circular(28)),
                                color: Color(0xFFFFFFFF)),
                            padding: const EdgeInsets.all(16),
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
                                  color: const Color(0xFFEEEEEE),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Rate Us',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                const Text(
                                    'Recomend us to other by rating us on google '),
                                const SizedBox(height: 20),
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
                                                  const Color(0xFF1EB9CE),
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 20,
                                                  horizontal: 40)),
                                          onPressed: () {

                                            Get.back();

                                          },
                                          child: const Center(
                                              child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 15),
                                            child: Text('cancel  '),
                                          ))),
                                    ),
                                    const SizedBox(
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
                                                  const Color(0xFF1EB9CE),
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 20,
                                                  horizontal: 40)),
                                          onPressed: () {},
                                          child: const Center(
                                              child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 15),
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
                      child: const ListTile(
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
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.yellow[600],
                          child: const Icon(
                            Icons.contact_support_outlined,
                            color: Colors.white,
                          )),
                      title: const Text(
                        'Contact Us',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const PrivacyScreen());
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.deepPurpleAccent[200],
                            child: const Icon(
                              Icons.privacy_tip_outlined,
                              color: Colors.white,
                            )),
                        title: const Text(
                          'Privacy policy',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(Container(
                          width: 375,
                          height: 271,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(28),
                                topLeft: Radius.circular(28),
                              ),
                              color: Color(0xFFFFFFFF)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 3,
                                width: 38,
                                color: const Color(0xFFE0E0E0),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Logout',
                                style: TextStyle(
                                    color: Color(0xFFF75555),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 3,
                                width: 327,
                                color: const Color(0xFFEEEEEE),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Are you sure you want to log out?',
                                style: TextStyle(
                                    color: Color(0xFF424242),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                              const SizedBox(
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
                                                  const Color(0xFF1EB9CE),
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 20,
                                                  horizontal: 40)),
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: const Center(
                                              child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 15),
                                            child: Text('cancel  '),
                                          ))),
                                    ),
                                    const SizedBox(
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
                                                  const Color(0xFF1EB9CE),
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 20,
                                                  horizontal: 40)),
                                          onPressed: () {
                                       Navigator.pushNamed(context,ScreenRoutes.onbroding);
                                          },
                                          child: const Center(
                                              child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 15),
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
                            child: const Icon(
                              Icons.logout_sharp,
                              color: Colors.white,
                            )),
                        title: const Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    const SizedBox(
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
