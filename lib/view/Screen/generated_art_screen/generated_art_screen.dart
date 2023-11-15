import 'package:ai_art_generator/utils/constants/app_images.dart';
import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:ai_art_generator/utils/constants/constant_size.dart';
import 'package:ai_art_generator/view_model/home_view_model/home_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/responce/status.dart';

class GeneratedArtScreen extends StatefulWidget {
  GeneratedArtScreen({Key? key, required this.id}) : super(key: key);
  String id;

  @override
  State<GeneratedArtScreen> createState() => _GeneratedArtScreenState();
}

class _GeneratedArtScreenState extends State<GeneratedArtScreen> {
  HomeViewModel homeViewModel = HomeViewModel();
  @override
  void initState() {
    super.initState();
    homeViewModel.getImageById(context, widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.whiteColor,
            appBar: AppBar(
              backgroundColor: AppColors.whiteColor,
              title: Text(
                'ArtWork',
                style: MyTextStyles.bold20black,
              ),
              elevation: 0,
              centerTitle: true,
              leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: AppColors.blackColor,
                  )),
              actions: const [],
            ),
            body: ChangeNotifierProvider<HomeViewModel>(
                create: (BuildContext context) => homeViewModel,
                child:
                    Consumer<HomeViewModel>(builder: (context, controller, _) {
                  switch (controller.getImagesData.status) {
                    case Status.LOADING:
                      return SizedBox(
                        height: ConstantSize.getScaleWidth(context) * 400,
                        child: const Center(child: Text('Processing...')),
                      );
                    case Status.ERROR:
                      return Text(controller.getImagesData.message.toString());

                    default:
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        child: Column(
                          children: [
                            SizedBox(
                              height: ConstantSize.getScaleHeight(context) * 20,
                            ),
                            Stack(
                              children: [
                                SizedBox(
                                  width:
                                      ConstantSize.getScaleWidth(context) * 324,
                                  height: ConstantSize.getScaleHeight(context) *
                                      324,
                                  child: ListView.builder(
                                    itemCount: controller
                                        .getImagesData
                                        .data!
                                        .generationsByPk!
                                        .generatedImages!
                                        .length,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return CachedNetworkImage(
                                        imageUrl: controller
                                            .getImagesData
                                            .data!
                                            .generationsByPk!
                                            .generatedImages![index]
                                            .url
                                            .toString(),
                                        placeholder: (context, url) =>
                                            const SizedBox(
                                          height: 10,
                                          width: 10,
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Center(
                                                child:
                                                    CircularProgressIndicator()),
                                          ),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                        fit: BoxFit.cover,
                                      );
                                    },
                                  ),
                                ),
                                const Positioned(
                                    bottom: 10,
                                    left: 12,
                                    child: CircleAvatar(
                                      backgroundColor: AppColors.primaryColor,
                                      radius:
                                          24.0, // Adjust the radius as needed
                                      child: Icon(
                                        Icons.arrow_downward_rounded,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: ConstantSize.getScaleHeight(context) * 20,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                      height:
                                          ConstantSize.getScaleHeight(context) *
                                              100,
                                      width:
                                          ConstantSize.getScaleWidth(context) *
                                              80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: AppColors.transparentPurple),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(AppImages.reGenerate),
                                          SizedBox(
                                            height: ConstantSize.getScaleHeight(
                                                    context) *
                                                5,
                                          ),
                                          const Center(
                                            child: Text(
                                              'Re-',
                                              style: TextStyle(
                                                  color: AppColors.primaryColor,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          const Center(
                                            child: Text('generate',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryColor,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12)),
                                          )
                                        ],
                                      )),
                                  SizedBox(
                                    width:
                                        ConstantSize.getScaleWidth(context) * 5,
                                  ),
                                  Container(
                                      height:
                                          ConstantSize.getScaleHeight(context) *
                                              100,
                                      width:
                                          ConstantSize.getScaleWidth(context) *
                                              80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: AppColors.transparentPurple),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(AppImages.upScale),
                                          SizedBox(
                                            height: ConstantSize.getScaleHeight(
                                                    context) *
                                                5,
                                          ),
                                          const Center(
                                            child: Text(
                                              'Up-',
                                              style: TextStyle(
                                                  color: AppColors.primaryColor,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          const Center(
                                            child: Text('Scale',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryColor,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12)),
                                          )
                                        ],
                                      )),
                                  SizedBox(
                                    width:
                                        ConstantSize.getScaleWidth(context) * 5,
                                  ),
                                  Container(
                                      height:
                                          ConstantSize.getScaleHeight(context) *
                                              100,
                                      width:
                                          ConstantSize.getScaleWidth(context) *
                                              80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: AppColors.transparentPurple),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(AppImages.bgRemove),
                                          SizedBox(
                                            height: ConstantSize.getScaleHeight(
                                                    context) *
                                                5,
                                          ),
                                          const Center(
                                            child: Text(
                                              'BG-',
                                              style: TextStyle(
                                                  color: AppColors.primaryColor,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          const Center(
                                            child: Text('Remove',
                                                style: TextStyle(
                                                    color:
                                                        AppColors.primaryColor,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12)),
                                          )
                                        ],
                                      )),
                                  SizedBox(
                                    width:
                                        ConstantSize.getScaleWidth(context) * 5,
                                  ),
                                  Container(
                                      height:
                                          ConstantSize.getScaleHeight(context) *
                                              100,
                                      width:
                                          ConstantSize.getScaleWidth(context) *
                                              80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: AppColors.primaryColor),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(AppImages.downloadImage),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                  }
                }))));
  }
}
