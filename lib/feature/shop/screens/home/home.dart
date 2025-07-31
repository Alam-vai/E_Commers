import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:socialclone/comon/styles/shadow.dart';
import 'package:socialclone/comon/widgets/images/rounded_image.dart';

import 'package:socialclone/comon/widgets/textfields/search_bar.dart';

import 'package:socialclone/feature/shop/screens/home/widgets/home_appbar.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/home_categories.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/primary_header_container.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/promo_slider.dart';
import 'package:socialclone/utils/constants/colors.dart';

import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/images.dart';

import '../../../../comon/widgets/layouts/grid_ayout.dart';
import '../../../../comon/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../comon/widgets/texts/section_heading.dart';
import '../../controllers/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///////////////Upper Part////////////////
            Stack(
              children: [
                SizedBox(height: USizes.profilePrimaryHeaderHeight * 2),

                // Primary Header Container
                UPrimaryHeaderContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UHomeAppbar(context),
                      SizedBox(height: USizes.spaceBtwSections),

                      // Home  Categories
                      UHomeCategoires(),
                    ],
                  ),
                ),

                // Search Bar
                USearchBar(),
              ],
            ),
            SizedBox(height: USizes.defaultSpace),

            ///////////////Lower Part////////////////
            // Banners
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  UPromoSlider(
                    banners: [
                      UImages.homeBanner1,
                      UImages.homeBanner2,
                      UImages.homeBanner3,
                      UImages.homeBanner4,
                      UImages.homeBanner5,
                    ],
                  ),
                  SizedBox(height: USizes.defaultSpace),
                  USectionHeading(title: "Popular Products", onPressed: () {}),
                  SizedBox(height: USizes.defaultSpace),

                  //  GRID Vertical Product Cards
                  UGridLayout(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return const UProductCardVertical();
                    },
                  ),
                ],
              ),

              //  Section Heading
            ),
          ],
        ),
      ),
    );
  }
}

