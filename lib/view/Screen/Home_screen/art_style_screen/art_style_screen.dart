import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:ai_art_generator/utils/constants/constant_size.dart';
import 'package:ai_art_generator/view/Widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../data/responce/status.dart';
import '../../../../view_model/home_view_model/home_view_model.dart';
import '../../../Widget/button.dart';
import '../widgets/items_card.dart';

class ArtStyleScreen extends StatefulWidget {
  const ArtStyleScreen({Key? key}) : super(key: key);

  @override
  State<ArtStyleScreen> createState() => _ArtStyleScreenState();
}

class _ArtStyleScreenState extends State<ArtStyleScreen> {
  // TextEditingController searchcontroller = TextEditingController();
  HomeViewModel homeViewModel = HomeViewModel();
  bool isFirst = true;
  @override
  void initState() {
    _initializeData();
    super.initState();
  }

  Future<void> _initializeData() async {
    if (isFirst) {
      await homeViewModel.getStyleApi(context);
      isFirst = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBarHome(
        showBackButton: true,
        height: ConstantSize.getScaleHeight(context) * 50,
        showBackText: false,
        title: 'Art Style',
        color: AppColors.whiteColor,
      ),
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
                  horizontal: ConstantSize.getScaleWidth(context) * 20,
                ),
                child: Column(
                  children: [
                    // Container(
                    //   height: ConstantSize.getScaleHeight(context) * 49,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(12),
                    //     color: AppColors.bgColor,
                    //   ),
                    //   child: Center(
                    //     child: TextField(
                    //       controller: searchcontroller,
                    //       decoration: const InputDecoration(
                    //         hintText: 'Search',
                    //         prefixIcon: Icon(Icons.search),
                    //         border: InputBorder.none,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: GridView.builder(
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                          childAspectRatio: 0.8,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return ValueListenableBuilder<int?>(
                            valueListenable: controller.selectedNotifier,
                            builder: (context, selectedIndex, child) {
                              return GestureDetector(
                                onTap: () {
                                  controller.selectedNotifier.value = index;
                                  controller.modelId = controller.getStyleData
                                      .data!.customModels![index].id
                                      .toString();
                                },
                                child: ItemsCardWidget(
                                  index: controller
                                      .getStyleData.data!.customModels![index],
                                  isSelected: index == selectedIndex,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child:  CustomButton(title: 'Continue Selected'),
                      ),
                    ),
                  ],
                ),
              );
          }
        }),
      ),
    ));
  }
}
