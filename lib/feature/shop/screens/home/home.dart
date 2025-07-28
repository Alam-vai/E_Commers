import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:socialclone/comon/widgets/images/rounded_image.dart';

import 'package:socialclone/comon/widgets/textfields/search_bar.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/banners_dot_navigation.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/home_appbar.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/home_categories.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/primary_header_container.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/promo_slider.dart';

import 'package:socialclone/utils/constants/sizes.dart';

import 'package:socialclone/utils/images.dart';


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
            child: UPromoSlider(),
          ),
        ],
      ),
    );
  }
}


