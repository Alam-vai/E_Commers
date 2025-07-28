import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/comon/widgets/images/rounded_image.dart';
import 'package:socialclone/comon/widgets/products/cart/cart_counter_icon.dart';
import 'package:socialclone/comon/widgets/textfields/search_bar.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/home_appbar.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/home_categories.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/primary_header_container.dart';
import 'package:socialclone/utils/constants/colors.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/constants/texts.dart';
import 'package:socialclone/utils/images.dart';
import '../../../../comon/widgets/appbar/appbar.dart';
import '../../../../comon/widgets/custom_shape/circular_container.dart';
import '../../../../utils/helpers/device_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                CarouselSlider(
                  items: [
                    URoundedImage(imageUrl: UImages.homeBanner1,),
                    URoundedImage(imageUrl: UImages.homeBanner2,),
                    URoundedImage(imageUrl: UImages.homeBanner3,),
                    URoundedImage(imageUrl: UImages.homeBanner4,),
                    URoundedImage(imageUrl: UImages.homeBanner5,),
                    URoundedImage(imageUrl: UImages.homeBanner6,),
                  ],
                  options: CarouselOptions(viewportFraction: 1.0, autoPlay: true,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
