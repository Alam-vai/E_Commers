import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../comon/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/images.dart';
import 'banners_dot_navigation.dart';

class UPromoSlider extends StatelessWidget {
  const UPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
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
            SizedBox(height: USizes.defaultSpace),
            BannersDotNavigation(),
          ],
        ),
      ],
    );
  }
}
