import 'package:admob_flutter/admob_flutter.dart';
import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:ai_art_generator/utils/constants/constant_size.dart';
import 'package:ai_art_generator/utils/routes/routes.dart';
import 'package:ai_art_generator/view/Screen/Home_screen/widgets/items_card.dart';
import 'package:ai_art_generator/view/Screen/Home_screen/widgets/my_bottom_sheet.dart';
import 'package:ai_art_generator/view/Widget/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../data/responce/status.dart';
import '../../../view_model/home_view_model/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

late AdmobInterstitial interstitial;

class _HomeScreenState extends State<HomeScreen> {
  HomeViewModel homeViewModel = HomeViewModel();
  final _formKey = GlobalKey<FormState>();
  int i = 0;
  @override
  initState() {
    interstitial = AdmobInterstitial(
      adUnitId: "ca-app-pub-3940256099942544/1033173712",
      listener: (AdmobAdEvent event, Map<String, dynamic>? args) {
        if (event == AdmobAdEvent.closed) interstitial.load();
      },
    );
    homeViewModel.getStyleApi(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0.3,
          title: Text('Muhammad Inam', style: MyTextStyles.bold20black),
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ConstantSize.getScaleWidth(context) * 10),
              child: Row(
                children: [
                  Container(
                    width: 67,
                    height: 28.71,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                        color: AppColors.primaryColor),
                    child: Padding(
                      padding: EdgeInsets.all(
                          ConstantSize.getScaleHeight(context) * 4),
                      child: Row(
                        children: [
                          Text('1302', style: MyTextStyles.semibold13white),
                          const SizedBox(
                            width: 5,
                          ),
                          const FaIcon(
                            FontAwesomeIcons.coins,
                            color: AppColors.yellowColor,
                            size: 15.66,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                      width: 45,
                      height: 28.71,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                          color: Color(0xFF1EB9CE)),
                      child: const Center(
                          child: Icon(
                        Icons.add_circle_outlined,
                        color: AppColors.whiteColor,
                      ))),
                ],
              ),
            )
          ],
        ),
        backgroundColor: AppColors.whiteColor,
        body: ChangeNotifierProvider<HomeViewModel>(
          create: (BuildContext context) => homeViewModel,
          child: Consumer<HomeViewModel>(builder: (context, controller, _) {
            switch (controller.getStyleData.status) {
              case Status.LOADING:
                return SizedBox(
                  height: ConstantSize.getScaleWidth(context) * 400,
                  child: const Center(child: Text('Processing...')),
                );
              case Status.ERROR:
                return Text(controller.getStyleData.message.toString());

              default:
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ConstantSize.getScaleWidth(context) * 20),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: ConstantSize.getScaleHeight(context) * 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Enter Prompt',
                                  style: MyTextStyles.bold20black),
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled:
                                        true, // Full width bottom sheet
                                    builder: (context) {
                                      return const MyBottomSheet();
                                    },
                                  );
                                },
                                child: Text(
                                  'Filters',
                                  style: MyTextStyles.regular16Primary,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: ConstantSize.getScaleHeight(context) * 10,
                          ),

                          Container(
                            height: ConstantSize.getScaleHeight(context) * 200,
                            width: ConstantSize.getScaleWidth(context) * 358,
                            decoration: BoxDecoration(
                                color: AppColors.bgColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                SizedBox(
                                    height:
                                        ConstantSize.getScaleHeight(context) *
                                            150,
                                    width: ConstantSize.getScaleWidth(context) *
                                        300,
                                    child: TextFormField(
                                      maxLines: 6,
                                      controller: controller.textController,
                                      decoration: const InputDecoration(
                                        hintText: 'Type Any Things',
                                        border: InputBorder.none,
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        return null;
                                      },
                                    )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Icon(
                                      Icons.refresh_rounded,
                                      color: AppColors.primaryColor,
                                      size: 15,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          _showInterstitialAd();
                                        },
                                        child: Text('Recent Prompts',
                                            style:
                                                MyTextStyles.regular10Primary))
                                  ],
                                ),
                              ],
                            ),
                          ), //textfield container hi
                          SizedBox(
                            height: ConstantSize.getScaleHeight(context) * 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Art Style',
                                style: MyTextStyles.bold20black,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, ScreenRoutes.artStyleScreen);
                                  //       Get.to(const ArtStyleScreen());
                                },
                                child: const FaIcon(
                                  FontAwesomeIcons.arrowRight,
                                  color: Color(0xFF1EB9CE),
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: ConstantSize.getScaleHeight(context) * 10,
                          ),
                          SizedBox(
                            height: ConstantSize.getScaleHeight(context) * 180,
                            width: double.infinity,
                            child: ListView.builder(
                              itemCount: controller
                                  .getStyleData.data!.customModels!.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                if (controller
                                        .getStyleData
                                        .data!
                                        .customModels![index]
                                        .generatedImage
                                        ?.url ==
                                    null) {
                                  return const SizedBox
                                      .shrink(); // Don't display anything for null image URL
                                }

                                return ValueListenableBuilder<int?>(
                                  valueListenable: controller.selectedNotifier,
                                  builder: (context, selectedIndex, child) {
                                    return GestureDetector(
                                      onTap: () {
                                        controller.selectedNotifier.value =
                                            index;
                                        controller.modelId = controller
                                            .getStyleData
                                            .data!
                                            .customModels![index]
                                            .id
                                            .toString();
                                      },
                                      child: ItemsCardWidget(
                                        index: controller.getStyleData.data!
                                            .customModels![index],
                                        isSelected: index == selectedIndex,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: ConstantSize.getScaleHeight(context) * 40,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(bottom: 0),
                            child: GestureDetector(
                                onTap: () async {
                                  if (_formKey.currentState!.validate()) {
                                    if (!controller.loading) {
                                      _showInterstitialAd();
                                      controller
                                          .generateImage(context)
                                          .then((value) {
                                        Future.delayed(
                                                const Duration(seconds: 5))
                                            .then((value) {
                                          Navigator.pushNamed(context,
                                              ScreenRoutes.generatedArtScreen,
                                              arguments: {'id': controller.id});
                                        });
                                      });
                                    }
                                  }
                                },
                                child: CustomButton(
                                  title: 'Generate',
                                  isloading: controller.loading,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
            }
          }),
        ));
  }

  void _showInterstitialAd() {
    print('pojsadja');
    interstitial.isLoaded.then((isLoaded) {
      if (isLoaded!) {
        interstitial.show();
      }
    });
  }
}
