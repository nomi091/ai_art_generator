import 'package:ai_art_generator/view/Authscreen/login_screen.dart';
import 'package:ai_art_generator/view/Widget/button.dart';
import 'package:ai_art_generator/view/Widget/container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class OnboardingSecondScreen extends StatelessWidget {
  const OnboardingSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body:Stack(
          children: [

Image.asset('images/onboard.jpg',
height: MediaQuery.of(context).size.height,
width: MediaQuery.of(context).size.width,

fit: BoxFit.cover,

),




            Positioned(
              bottom: 0,
              child: Opacity(
                opacity: 0.7,
                child: Container(


                  height: 500,
                  width: 390,
                  color: const Color(0xfffffffff2),


                ),
              ),
            ),
            Positioned(
              bottom: 0,

              child: Opacity(
                opacity: 0.5,
                child: Container(


                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  color:const Color(0xffffffff2),




                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Opacity(
                opacity: 0.7,
                child: Container(


                  height: 240,
                  width: MediaQuery.of(context).size.width,
                  color:const Color(0xffffffff2),




                ),
              ),
            ),
            
            const Positioned(
              bottom: 150,
              left: 50,
              right: 50,
              child: Text('''Generate Best AI
    Arts With Us  ''',style: TextStyle(
                
                color: Colors.black,
                fontSize: 34.17,
                fontWeight: FontWeight.w700
                
                
              ),),
            ),
            const Positioned(
              bottom: 100,
              left: 100,
              right: 100,
              child: Text('''Unleash your creativity
    with the help of AI art  ''',style: TextStyle(

                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w300


              ),),
            ),
            
            Positioned

              (

                bottom: 20,


                child: GestureDetector(

                    onTap: (){

                      Get.to(const LoginScreen());


                    },


                    child:  CustomButton(title: 'Next')))






          ],


        )

        
        
        
      ),
    );
  }
}
