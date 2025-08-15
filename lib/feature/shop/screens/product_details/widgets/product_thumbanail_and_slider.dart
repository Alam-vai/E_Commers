import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../comon/widgets/appbar/appbar.dart';
import '../../../../../comon/widgets/icons/circular_icon.dart';
import '../../../../../comon/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class UProdudctThumbnailedAndSlider extends StatelessWidget {
  const UProdudctThumbnailedAndSlider({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Container(
      color: dark ? UColors.darkGrey : UColors.light,
      child: Stack(
        children: [
          ///-----------------[Main Image]----------------------------



          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(
                USizes.productImageRadius * 2,
              ),
              child: Center(
                child: Image(image: AssetImage(UImages.productImage18)),
              ),
            ),
          ),

          //Image Slider
          Positioned(
            left: USizes.defaultSpace,
            right: 0,
            bottom: 30,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    SizedBox(width: USizes.spaceBtwItems),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) => URoundedImage(
                  width: 80,

                  backgroundColor: dark ? UColors.dark : UColors.white,
                  padding: EdgeInsets.all(USizes.sm),
                  border: Border.all(color: UColors.primary),
                  imageUrl: UImages.productImage18,
                ),
              ),
            ),
          ),

          //AppBar
          UAppBar(
            showBackArrow: true,
            actions: [
              UCircularIcon(icon: Iconsax.heart5, color: Colors.red),
            ],
          ),
        ],
      ),
    );
  }
}
