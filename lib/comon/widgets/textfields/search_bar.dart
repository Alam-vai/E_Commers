
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/feature/shop/screens/home/home.dart';


import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../styles/shadow.dart';

class USearchBar extends StatelessWidget {
  const USearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: 0,
      right: USizes.spaceBtwSections,
      left: USizes.spaceBtwSections,
      child: GestureDetector(
        onTap: () => Get.to(() => HomeScreen()),
        child: Hero(
          tag: 'search_animation',
          child: Container(
            height: USizes.searchBarHeight,
            padding: EdgeInsets.symmetric(horizontal: USizes.md),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
                color: dark ? UColors.dark : UColors.light,
                boxShadow: UShadow.searchBarShadow
            ),
            child: Row(
              children: [

                /// Search Icon
                Icon(Iconsax.search_normal, color: UColors.darkGrey),
                SizedBox(width: USizes.spaceBtwItems),

                /// Search Bar Title
                Text(UTexts.searchBarTitle, style: Theme.of(context).textTheme.bodySmall)
              ],
            ),
          ),
        ),
      ),
    );
  }
}