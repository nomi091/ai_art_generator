import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:ai_art_generator/utils/constants/constant_size.dart';
import 'package:ai_art_generator/view/Widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int selectedIndex = 0;

  void selectButton(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          title: 'Explore',
          onTapBack: () {
            Navigator.pop(context);
          },
          height: ConstantSize.getScaleHeight(context) * 60,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ConstantSize.getScaleWidth(context) * 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: ConstantSize.getScaleHeight(context) * 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildButton(0, 'Trending'),
                    buildButton(1, 'New'),
                    buildButton(2, 'Follows'),
                  ],
                ),
              ),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          // Get.to(const PostScreen());
                        },
                        child: selectedIndex == 0
                            ? CachedNetworkImage(
                                imageUrl:
                                    'https://npr.brightspotcdn.com/b5/7a/9761384d4278aefe54a651499765/ai-art.png',
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) => const SizedBox(
                                  
                                  child: Padding(
                                    padding: EdgeInsets.all(100.0),
                                    child: CircularProgressIndicator(
                                        color: AppColors.primaryColor),
                                  ),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error,
                                        size: 1, color: Colors.white),
                              )
                            : selectedIndex == 2
                                ? CachedNetworkImage(
                                    imageUrl:
                                        'https://im.indiatimes.in/content/2023/Jan/bride_63ccd7556e258.jpg?w=725&h=725',
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    placeholder: (context, url) =>
                                        const SizedBox(
                                      child: Padding(
                                        padding: EdgeInsets.all(100.0),
                                        child: CircularProgressIndicator(
                                            color: AppColors.secondaryColor),
                                      ),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error,
                                            size: 1,
                                            color: AppColors.primaryColor),
                                  )
                                : CachedNetworkImage(
                                    imageUrl:
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFHLA2kb90oO2PORy8NmTTfHc0jUXd83IXxw&usqp=CAU',
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    placeholder: (context, url) =>
                                        const SizedBox(
                               
                                      child: Padding(
                                        padding: EdgeInsets.all(100.0),
                                        child: CircularProgressIndicator(
                                            color: AppColors.secondaryColor),
                                      ),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error,
                                            size: 1,
                                            color: AppColors.primaryColor),
                                  ));
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

  Widget buildButton(int index, String label) {
    bool isSelected = selectedIndex == index;

    return Container(
        height: ConstantSize.getScaleHeight(context) * 30,
        width: ConstantSize.getScaleWidth(
              context,
            ) *
            90,
        decoration: BoxDecoration(
          gradient: isSelected
              ? const LinearGradient(
                  colors: [Color(0xFF1EB9CE), Color(0xFF21FFCA)],
                )
              : LinearGradient(
                  colors: [AppColors.liteGrayColor, AppColors.liteGrayColor]),
          borderRadius:
              BorderRadius.circular(8.0), // Optional: Add rounded corners
        ),
        child: GestureDetector(
          onTap: () => selectButton(index),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              label,
              style: isSelected
                  ? MyTextStyles.regular16white
                  : MyTextStyles.regular16black,
            ),
          ),
        ));
  }
}
