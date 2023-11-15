import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Notification ',
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 1,
                      child: ListTile(
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
                          trailing: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
