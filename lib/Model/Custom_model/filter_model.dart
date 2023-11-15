import 'package:flutter/material.dart';

class ToggleFileter {
   String text;
   String text2;
   bool toggle;

  ToggleFileter(
      {
    required this.text,
    required this.text2,
    
    required this.toggle,});
}

class ToggleNotificationItemsModel {
   String text;
   bool toggle;
  ToggleNotificationItemsModel({
    required this.text,
    required this.toggle,
  });
}
