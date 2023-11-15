import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constant.dart';
import 'imagineartscreenthree.dart';
import 'imagineartscreentwo.dart';
final String  myImage=    'https://i.pinimg.com/736x/9b/0c/4a/9b0c4ae78cdadc242d26e993843e183d.jpg';


class ImagineArtScreenOne extends StatefulWidget {

  const ImagineArtScreenOne({Key? key}) : super(key: key);

  @override
  State<ImagineArtScreenOne> createState() => _ImagineArtScreenOneState();
}

class _ImagineArtScreenOneState extends State<ImagineArtScreenOne> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundscreencolors,
        appBar: AppBar(
          backgroundColor: backgroundscreencolors,
          // title: Text(
          //   'profilescreen ',
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
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),

          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              ListTile(
                  leading: Container(
                    height: 80,
                    width: 80,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/736x/9b/0c/4a/9b0c4ae78cdadc242d26e993843e183d.jpg'),
                    ),
                  ),
                  title: Text(
                    'imagine.art',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text('imagine.art'),
                  trailing: Chip(
                    label: Text('Follow'),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    backgroundColor: Color(0xFF1EB9CE),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('675',style: TextStyle(


                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 24
                      ),),
                      Text('ArtWork'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('24.6K',style: TextStyle(


                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 24
                      ),),
                      Text('Followers'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [


                  GestureDetector(
                    onTap: (){


                      setState(() {

                      });
                    },
                    child: Container(
                      height: 45,
                      width: 179,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFF1EB9CE),


                                  width: 4))),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text('Personal',style: TextStyle(


                            color: Color(0xFF1EB9CE),
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),),
                      )),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){

                      setState(() {

                      });
                    },
                    child: GestureDetector(

                      onTap: (){

                        Get.to(ImagineArtScreenTwo());


                      },
                      child: Container(
                        height: 45,
                        width: 179,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0xFF9E9E9E), width: 4))),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text('Published',style: TextStyle(


                              color: Color(0xFF9E9E9E),
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                          ),),
                        )),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 10,),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(

                        onTap: (){

                          Get.to(ImagineArtScreenThree(

                            imageurl:myImage ,

                          ));


                        },


                        child: MyGridTile(index: index));
                  },
                  staggeredTileBuilder: (int index) =>
                      StaggeredTile.count(1, index.isEven ? 1.5 : 1),
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
//Image.network('https://i.pinimg.com/736x/9b/0c/4a/9b0c4ae78cdadc242d26e993843e183d.jpg'),
//



class MyGridTile extends StatelessWidget {
  final int index;

  MyGridTile({required this.index});

  @override


  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [

        Image.network(myImage,fit: BoxFit.cover,),

      Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.black.withOpacity(0.1),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Text(
                    '1.2K', // Replace with your text
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 4,),
                  Icon(
                    Icons.remove_red_eye,
                    color: Color(0xFFFFFFFF80),
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




