import 'package:flutter/material.dart';

class circleAvatorOnboard extends StatelessWidget {
  const circleAvatorOnboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
radius: 96,
      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKdyAbxUNXPd53BMdl8zS87lWWoOJNveQg6YsDSG_F4Tp7B4aAsjXqRxI6U2VwAZiP3Yg&usqp=CAU'),


    );
  }
}
