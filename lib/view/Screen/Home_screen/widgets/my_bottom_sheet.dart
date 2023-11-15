import 'package:ai_art_generator/utils/constants/constant_size.dart';
import 'package:ai_art_generator/view_model/home_view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/constants/colors.dart';
import '../../../Widget/button.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  _MyBottomSheetState createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  double currentPrice = 6.0; // Initial price value

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(builder: (context, controller, child) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: ConstantSize.getWidth(context) * 0.06,
            vertical:  ConstantSize.getWidth(context) * 0.06,
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: ConstantSize.getScaleHeight(context) * 66,
              decoration: BoxDecoration(
                color: AppColors.bgColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Padding(
                     padding: const EdgeInsets.only(left:8.0),
                     child: Text('Guidance Scale',style: MyTextStyles.medium13black,),
                   ),
                  Slider(
                    value: currentPrice,
                    min: 0.0,
                    max: 100.0,
                    activeColor: AppColors.primaryColor,
                    inactiveColor: Colors.grey,
                    onChanged: (double value) {
                      setState(() {
                        currentPrice = value;
                      });
                    },
                    label: currentPrice
                        .toStringAsFixed(2), // Provide the label string here
                    divisions:
                        100, // Optional, adds divisions to the slider track
                    // onChanged: (double value) {
                    //   setState(() {
                    //     currentPrice = value;
                    //   });
                    // },
                  ),
                ],
              ),
            ),
                         SizedBox(height: ConstantSize.getScaleHeight(context)*10),

            Container(
              height: ConstantSize.getScaleHeight(context) * 127,
              decoration: BoxDecoration(
                  color: AppColors.bgColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    maxLines: 6,
                    controller: controller.textController,
                    decoration: const InputDecoration(
                        hintText: 'Negative Prompt', border: InputBorder.none)),
              ),
            ),
             SizedBox(height: ConstantSize.getScaleHeight(context)*10),
            ...List.generate(controller.filterTogles.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  height: ConstantSize.getScaleHeight(context) * 56,
                  decoration: BoxDecoration(
                    color: AppColors.bgColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: ConstantSize.getScaleWidth(context) * 100,
                          child: Text(
                            controller.filterTogles[index].text,
                            style: MyTextStyles.regular16black,
                          ),
                        ),
                        Container(
                          width: ConstantSize.getScaleWidth(context) * 110,
                          height: ConstantSize.getScaleHeight(context) * 20,
                          decoration: BoxDecoration(
                            color: AppColors.litOrangeColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.alternate_email_sharp,
                                size: 15,
                              ),
                              Text(
                                controller.filterTogles[index].text2,
                                style: MyTextStyles.regular10black,
                              ),
                            ],
                          ),
                        ),
                        Transform.scale(
                          scale: 1.3,
                          child: Switch(
                            value: controller.filterTogles[index].toggle,
                            activeColor: AppColors.primaryColor,
                            onChanged: (value) {
                              setState(() {
                             //   controller.filterTogles[index].toggle = value;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child:  CustomButton(title: 'Apply Filter')),
            )
          ]),
        ),
      );
    });
  }
}

class ToggleButton extends StatefulWidget {
  final String title;

  const ToggleButton({super.key, required this.title});

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.title),
        IconButton(
          icon: Icon(
            isSelected ? Icons.check_box : Icons.check_box_outline_blank,
            color: isSelected ? Colors.blue : Colors.grey,
          ),
          onPressed: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
        ),
      ],
    );
  }
}
