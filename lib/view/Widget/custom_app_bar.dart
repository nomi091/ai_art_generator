import 'package:ai_art_generator/utils/constants/constant_size.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.height,
    required this.title,
    required this.onTapBack,
    this.icon,
  }) : super(key: key);

  final double height;
  final String title;
  final Icon? icon;
  final VoidCallback? onTapBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
      leading: title == 'Back'
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_new,
                  color: AppColors.blackColor),
              onPressed: onTapBack,
            )
          : const SizedBox.shrink(),
      title: Align(
          alignment: title == "Back" ? Alignment.centerLeft : Alignment.center,
          child: Padding(
            padding: title == "Back"
                ? const EdgeInsets.all(0.0)
                : EdgeInsets.only(
                    right: ConstantSize.getScaleWidth(context) * 25),
            child: Text(title,
                style: title == "Back"
                    ? MyTextStyles.medium16black
                    : MyTextStyles.bold24black),
          )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class CustomAppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;
  final bool? showBackText;
  final String title;
  Color? color;
  final double height;
  double? elevation;

  CustomAppBarHome(
      {super.key,
      required this.showBackButton,
      required this.title,
      this.color,
      this.elevation,
      required this.height,
      this.showBackText = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color, // Customize the background color
      elevation: elevation ?? 0, // Remove shadow
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back,color: AppColors.blackColor,),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showBackText ==
              true) // Display the back text if showBackButton is true
             Text("Back", style: MyTextStyles.bold20black),
          if (showBackButton) // Add a little spacing
          Text(
            title,
            style:  MyTextStyles.bold20black,
          ),
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(height);
}
