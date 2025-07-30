import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:socialclone/feature/shop/controllers/home/home_controller.dart';

import '../../../../../comon/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/images.dart';
import 'banners_dot_navigation.dart';

class UPromoSlider extends StatelessWidget {
  const UPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        Column(
          children: [
            CarouselSlider(
              items: [
                ...banners.map((banners) => URoundedImage(imageUrl: banners)),
              ],
              options: CarouselOptions(viewportFraction: 1.0, autoPlay: true,onPageChanged: (index, reason) => controller.onPageChanged(
                  index),),
              carouselController: controller.carouselController,
            ),
            SizedBox(height: USizes.defaultSpace),
            BannersDotNavigation(),
          ],
        ),
      ],
    );
  }
}
