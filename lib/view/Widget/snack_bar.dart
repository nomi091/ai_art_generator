import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:flutter/material.dart';

void showBottomSnackbar(BuildContext context, String title) {
  final snackBarWidth = MediaQuery.of(context).size.width; // Get screen width
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.fixed, // Set behavior to fixed
      backgroundColor: AppColors.redColor, // Background color
      content: SizedBox( // Wrap content in SizedBox
        width: snackBarWidth, // Set width to screen width
        child: Container(
          
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white, // Text color
              fontSize: 16.0, // Text size
            ),
          ),
        ),
      ),
      duration: const Duration(seconds: 3), // Adjust the duration as needed
    ),
  );
}

// Example of usage:
// showBottomSnackbar(context, "This is a Snackbar");
