import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/comon/widgets/custom_shape/rounded_container.dart';
import 'package:socialclone/comon/widgets/icons/circular_icon.dart';
import 'package:socialclone/comon/widgets/images/rounded_image.dart';
import 'package:socialclone/utils/constants/colors.dart';
import 'package:socialclone/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

import '../../../styles/shadow.dart';
import '../../Product_price_text.dart';
import '../../texts/product_title_text.dart';

class UProductCardVertical extends StatelessWidget {
  const UProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: UShadow.verticalProductShadow,
          borderRadius: BorderRadius.circular(USizes.productImageRadius),
          color: dark ? UColors.darkGrey : UColors.white,
        ),
        child: Column(
          // Thumbnail  Favourite Button and discount Tag
          children: [
            URoundedContainer(
              width: 180,
              padding: const EdgeInsets.all(1),
              backgroundColor: dark ? UColors.dark : UColors.light,
              child: Stack(
                children: [
                  // Thumbnail
                  URoundedImage(imageUrl: "assets/products/product 2.png"),
                  // Discount Tag
                  Positioned(
                    top: 12,
                    left: 1,

                    child: URoundedContainer(
                      radius: USizes.sm,
                      backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: USizes.sm,
                        vertical: USizes.xs,
                      ),
                      child: UProductPriceText(),
                    ),
                  ),
                  //Favourite Button
                  Positioned(
                    right: 0,
                    top: 0,
                    child: UCircularIcon(icon: Iconsax.heart, color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: USizes.defaultSpace / 2),

            Padding(
              padding: const EdgeInsets.only(left: USizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UProductTitleText(title: "Product Title", smallSize: true),
                  const SizedBox(height: USizes.spaceBtwItems / 2),
                  // Product brand and verification
                  Row(
                    children: [
                      Text(
                        "Bata",
                        style: Theme.of(context).textTheme.labelMedium,

                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 15),
                      Icon(
                        Iconsax.verify5,
                        color: UColors.primary,
                        size: USizes.iconXs,
                      ),
                    ],
                  ),

                  // Product Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$50.00',
                        style: Theme.of(context).textTheme.labelMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,

                      ),
                      Container(
                        width: USizes.iconLg*1.2,
                        height: USizes.iconLg*1.2,
                       decoration: BoxDecoration(
                         color: UColors.primary,
                          borderRadius:BorderRadius.only(
                            topLeft: Radius.circular(USizes.sm),
                            bottomRight: Radius.circular(USizes.sm

                          )
                       ),

                       ),
                        child: Icon(
                          Iconsax.add,
                          color: UColors.white,
                          size: USizes.iconLg,
                        ),

                      )


                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


