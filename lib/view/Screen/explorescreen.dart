// import 'package:ai_art_generator/view/Screen/useraccountscreen.dart';
// import 'package:ai_art_generator/constant.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// import 'Homescreen.dart';
// import 'Postscreen.dart';

// class BotomNavigationExplore extends StatefulWidget {
//   const BotomNavigationExplore({Key? key}) : super(key: key);

//   @override
//   State<BotomNavigationExplore> createState() => _BotomNavigationExploreState();
// }

// class _BotomNavigationExploreState extends State<BotomNavigationExplore> {
//   int myIndex = 0;
//   var pagesDat = [const ExploreScreen(), const HomeScreen(), const UserAccountScreen()];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: backgroundscreencolors,
//         body: pagesDat[myIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: const Color(0xFF1EB9CE),
//           onTap: (index) {
//             myIndex = index;
//             setState(() {});
//           },
//           selectedItemColor: Colors.black,
//           currentIndex: myIndex,
//           // backgroundColor: Color(0xFF1EB9CE),

//           items: <BottomNavigationBarItem>[
// //color: Colors.white

//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.explore_outlined,
//                   color: Colors.white.withOpacity(.5),
//                 ),
//                 label: '',
//                 activeIcon: const Icon(Icons.explore_outlined, color: Colors.white)),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.home_max_outlined,
//                     color: Colors.white.withOpacity(.5)),
//                 label: '',
//                 activeIcon: const Icon(
//                   Icons.home_max_outlined,
//                   color: Colors.white,
//                 )),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person_outline,
//                     color: Colors.white.withOpacity(.5)),
//                 label: '',
//                 activeIcon: const Icon(Icons.person_outline, color: Colors.white)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ExploreScreen extends StatefulWidget {
//   const ExploreScreen({Key? key}) : super(key: key);

//   @override
//   State<ExploreScreen> createState() => _ExploreScreenState();
// }

// class _ExploreScreenState extends State<ExploreScreen> {
//   int Selectindex = -1;
//   void Buttonselection(int index) {
//     setState(() {
//       if (Selectindex == index) {
//         Selectindex = -1; // Deselect if already selected
//       } else {
//         Selectindex = index;
//       }
//     });
//   }

//   Color getButtonColor(int index) {
//     // Determine the color based on the selected state
//     return Selectindex == index ? const Color(0xFF1EB9CE) : const Color(0xFFF4F4F4);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: const Text(
//             'Explore ',
//             style: TextStyle(
//                 color: Color(0xFF212121),
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold),
//           ),
//           elevation: 0,
//           centerTitle: true,
//           leading: GestureDetector(
//               onTap: () {
//                 Get.back();
//               },
//               child: const Icon(
//                 Icons.arrow_back,
//                 color: Colors.black,
//               )),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   TextButton.icon(
//                     onPressed: () {
//                       Buttonselection(0);
//                       setState(() {});
//                     },
//                     icon: const FaIcon(
//                       FontAwesomeIcons.fire,
//                       size: 18,
//                       color: Colors.black,
//                     ),
//                     label: const Text(
//                       'Trending',
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     style: TextButton.styleFrom(
//                         backgroundColor: getButtonColor(0),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10))),
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   TextButton.icon(
//                     onPressed: () {
//                       Buttonselection(1);
//                       setState(() {});
//                     },
//                     icon: const Icon(
//                       Icons.circle_outlined,
//                       color: Colors.black,
//                     ),
//                     label: const Text(
//                       'New         ',
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     style: TextButton.styleFrom(
//                         backgroundColor: getButtonColor(1),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10))),
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   TextButton.icon(
//                     onPressed: () {
//                       Buttonselection(2);
//                       setState(() {});
//                     },
//                     icon: const Icon(
//                       Icons.person_add,
//                       color: Colors.black,
//                     ),
//                     label: const Text(
//                       'Follows',
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     style: TextButton.styleFrom(
//                         backgroundColor: getButtonColor(2),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10))),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Expanded(
//                 child: StaggeredGridView.countBuilder(
//                   crossAxisCount: 2,
//                   itemCount: 10,
//                   itemBuilder: (BuildContext context, int index) {
//                     return GestureDetector(
//                       onTap: () {
//                         Get.to(const PostScreen());
//                       },
//                       child: Image.network(
//                         'https://i.pinimg.com/736x/9b/0c/4a/9b0c4ae78cdadc242d26e993843e183d.jpg',
//                         fit: BoxFit.cover,
//                       ),
//                     );
//                   },
//                   staggeredTileBuilder: (int index) =>
//                       StaggeredTile.count(1, index.isEven ? 1.5 : 1),
//                   mainAxisSpacing: 10.0,
//                   crossAxisSpacing: 10.0,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
