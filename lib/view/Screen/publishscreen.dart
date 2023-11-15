import 'package:ai_art_generator/view/Screen/explorescreen.dart';
import 'package:ai_art_generator/view/Widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class PublishScreen extends StatefulWidget {
  const PublishScreen({Key? key}) : super(key: key);

  @override
  State<PublishScreen> createState() => _PublishScreenState();
}

class _PublishScreenState extends State<PublishScreen> {
  bool isvalue=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Publish ',
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
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [


                Container(
                  height: 509.33,
                  width: 382,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/736x/9b/0c/4a/9b0c4ae78cdadc242d26e993843e183d.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Text('Add Title (Optional)',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700


                ),),
                SizedBox(height: 10,),
                Container(
                  width: 382,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xFFFAFAFA)

                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Beautiful women AI Avatar',style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600


                      )),
                    ),
                  ),
                ),

SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text('Show Prompt',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700


                    ),),


                Switch(
activeColor: Color(0xFF1EB9CE),
                  
                    value: isvalue,
                    onChanged: (vall){

                      isvalue=vall;
                      setState(() {

                      }

                      );




                    }),






                  ],
                ),


                SizedBox(height: 10,),
                Container(

                  height: 200,
                  width: 382,
                  decoration: BoxDecoration(

                      color: Color(0xFFFAFAFA)
                  ),

                  child: Text("n this simplified version, we've included only the essential parts of the code to demonstrate sharing. When the  button is tapped, it triggers the _shareContent function, which in turn opens the system share menu."),
                ),
Padding(
  padding: const EdgeInsets.only(bottom: 30),
  child:   Row(children: [
    Expanded(child: CustomButton(title: 'Download Art')),
    Expanded(child: GestureDetector(

        onTap: (){


          // Get.to(BotomNavigationExplore());


        },


        child: CustomButton(title: 'Share to feed')))






  ],),
)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
