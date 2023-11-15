import 'package:ai_art_generator/utils/constants/app_images.dart';
import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:ai_art_generator/view/Screen/profile_screen/profile_screen.dart';
import 'package:ai_art_generator/constant.dart';
import 'package:flutter/material.dart';

import '../Home_screen/home_screen.dart';



class CutomBottomNavigationBar extends StatefulWidget {
  const CutomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CutomBottomNavigationBar> createState() => _CutomBottomNavigationBarState();
}

class _CutomBottomNavigationBarState extends State<CutomBottomNavigationBar> {
  int myIndex = 0;
  var pagesDat = [
    // const ExploreScreen(),
  //  Container(child: const Center(child: Text('Comming Soon')),),
    const HomeScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundscreencolors,
        body: pagesDat[myIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF1EB9CE),
          onTap: (index) {
            myIndex = index;
            setState(() {});
          },
          selectedItemColor: Colors.black,
          currentIndex: myIndex,
          // backgroundColor: Color(0xFF1EB9CE),

          items: <BottomNavigationBarItem>[
            // BottomNavigationBarItem(
            //   icon: Image.asset(
            //     AppImages.exploreIcon, // Replace with your SVG file path
            //     color: AppColors.whiteColor,
            //   ),
            //   label: '',
            //   activeIcon: Image.asset(
            //     AppImages.exploreIcon, // Replace with your SVG file path
            //     color: AppColors.whiteColor,
            //   ),
            // ),
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.homeIcon, // Replace with your SVG file path
                color: AppColors.whiteColor,
              ),
              label: '',
              activeIcon: Image.asset(
                AppImages.homeIcon, // Replace with your SVG file path
                color: AppColors.whiteColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.profileIcon, // Replace with your SVG file path
                color: AppColors.whiteColor,
              ),
              label: '',
              activeIcon: Image.asset(
                AppImages.profileIcon, // Replace with your SVG file path
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
