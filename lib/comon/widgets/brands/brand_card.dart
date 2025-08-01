import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shape/rounded_container.dart';
import '../images/rounded_image.dart';
import '../texts/brand_title_with_verify_icon.dart';

class UBrandCard extends StatelessWidget {
  const UBrandCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return URoundedContainer(

      width: USizes.brandCardWidth,
      showBorder: true,
      padding: const EdgeInsets.all(8.0),
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          // Brand Images
          Flexible(child: URoundedImage(imageUrl: UImages.bataLogo)),
          SizedBox(width: USizes.spaceBtwItems / 2),

          // Brand Name & Verified Icon
          // right side
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [

                UBrandTitleWithVerifyIcon(
                  title: "Bata",
                  brandTextSize: TextSizes.large,
                ),
                Text("172 products", style: Theme
                    .of(context)
                    .textTheme
                    .labelMedium, overflow: TextOverflow.ellipsis, )
              ],
            ),
          ),

        ],
      ),
    );
  }
}