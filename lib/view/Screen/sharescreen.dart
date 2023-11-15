import 'package:flutter/material.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({Key? key}) : super(key: key);

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [


                  const CircleAvatar(
                    backgroundImage: NetworkImage('https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp'),
                    radius: 70,
                  ),

                  Positioned(
                      top: 90,
                      bottom: -10,
                      right: 20,
                      child: GestureDetector(
                        onTap: (){


                        },
                        child: const CircleAvatar(

                          backgroundColor: Color(0xFF1EB9CE),
                          child: Icon(Icons.photo_camera,
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
            const SizedBox(height: 50,),
            Container(

              height: 495,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))

              ),
              child: Column(



                children: [



                  const SizedBox(height: 20,),


Container(
  height: 28,
  width: 300,
  decoration: BoxDecoration(


    borderRadius: BorderRadius.circular(10),
    color: const Color(0xFFD9D9D9),

  ),

  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [



      Text('https://imgv3.fotor.com...',


      ),
      Icon(Icons.info_outline_sharp)

    ],
  ),

),
const SizedBox(height: 10,),
                  const Text('Earn 10 coins by invitng friends'),

                  const SizedBox(height: 10,),

                 Expanded(
                   child: ListView.builder(
                     itemCount: 25,
                       itemBuilder: (context, index) {
                         return const ListTile(
                             leading: CircleAvatar(
                               backgroundImage: NetworkImage('https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg'),

                             ),
                             title: Text(
                               'Abdul karim',
                               style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.w600,
                               ),
                             ),
                             trailing: Text('12-May-2012')
                         );
                       },),
                 )



                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
