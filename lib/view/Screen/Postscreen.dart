import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:readmore/readmore.dart';





class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  String contant = "Keep in mind that this is just one way to handle this interaction. Depending on your app's design and requirements, you might choose to display the full text in a different manner, such as opening a new screen, expanding the chip in-place, etc.";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Post ',
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
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                    itemBuilder: (context, index) {

                      return Container(
                        width: 382,
                        height: 701,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Container(
                                height: 44,
                                width: 44,
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
                              trailing: PopupMenuButton(
offset: Offset(16,50),

                                shape: RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(20)
                                ),
                                itemBuilder: (context) {
                                  return [

                                    PopupMenuItem(child: Row(

                                      children: [


                                        Icon(Icons.cloud_download_outlined),
                                        SizedBox(width: 10,),
                                        Text('Download Art')


                                      ],
                                    )),

                                    PopupMenuItem(child: Row(

                                      children: [


                                        Icon(Icons.report_problem_outlined,color: Colors.red,),
                                        SizedBox(width: 10,),
                                        Text('Report',style: TextStyle(
                                          color: Colors.red
                                        ),)


                                      ],
                                    )),








                                  ];


                                },




                              ),
                            ),
                            SizedBox(
                              width: 382,
                              height: 382,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  'https://i.pinimg.com/736x/9b/0c/4a/9b0c4ae78cdadc242d26e993843e183d.jpg', // Replace with your image URL
                                  width: 382,
                                  height: 382,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.favorite_outline,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('247'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 125),
                                    child: Icon(Icons.send),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Chip(
                                      label: Text(
                                        'Remix',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      backgroundColor: Color(0xFF1EB9CE),
                                      padding: EdgeInsets.all(10),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Text(
                              'Portrait of Women with Tattoo',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Prompt',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReadMoreText(
                              contant,
                              trimLines: 2,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'More',
                              trimExpandedText: 'show less',
                              style: TextStyle(fontSize: 18),
                              colorClickableText: Color(0xFF1EB9CE),
                              textAlign: TextAlign.justify,
                            ),





                          ],
                        ),
                      );


                    },),
              )


            ],
          ),
        ),
      ),
    );;
  }
}
