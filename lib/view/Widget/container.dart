import 'dart:math';

import 'package:flutter/material.dart';

class ReuseContainer extends StatelessWidget {
  const ReuseContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -15 *(pi/ 180),
      child: Container(
        height: 129.04,
        width: 156.98,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(22)



        ),




      ),
    );
  }
}
