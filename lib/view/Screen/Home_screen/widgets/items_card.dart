import 'package:ai_art_generator/utils/constants/colors.dart';
import 'package:ai_art_generator/utils/constants/constant_size.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../Model/style_list_model.dart';
class ItemsCardWidget extends StatelessWidget {
  final CustomModels index;
  final bool isSelected; // New property to determine if the card is selected

  const ItemsCardWidget({required this.index, this.isSelected = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 176,
                width: 150,
                decoration: BoxDecoration(
                  color: AppColors.bgColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isSelected ? AppColors.secondaryColor: Colors.transparent, // Selected color
                    width: 2.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: ConstantSize.getScaleHeight(context) * 134,
                      width: ConstantSize.getScaleWidth(context) * 134,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: index.generatedImage!.url.toString(),
                        placeholder: (context, url) => const SizedBox(
                          height: 10,
                          width: 10,
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(index.name.toString()),
                  ],
                ),
              ),
            ],
          ),
          // Position the top-right side icon only if the card is selected
          if (isSelected)
            const Positioned(
              top: 10,
              right: 10,
              child: Icon(Icons.check_circle, color: AppColors.secondaryColor),
            ),
        ],
      ),
    );
  }
}
