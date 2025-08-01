import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shape/rounded_container.dart';
import 'brand_card.dart';

class UBrandshowcase extends StatelessWidget {
  const UBrandshowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: URoundedContainer(
        showBorder: true,
        borderColor: UColors.darkGrey,
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.all(USizes.md),
        margin: EdgeInsets.only(bottom: USizes.spaceBtwItems),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UBrandCard(showBorder: false),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Brand Images
                  ...images.map((image) => buildBrandImage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class buildBrandImage extends StatelessWidget {
  const buildBrandImage({super.key});

  @override
  Widget build(BuildContext context) {
    return URoundedContainer(
      height: 100,
      margin: EdgeInsets.only(right: USizes.sm),
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(USizes.md),
      child: Image(
        image: AssetImage(UImages.productImage1),
        fit: BoxFit.contain,
      ),
    );
  }
}
