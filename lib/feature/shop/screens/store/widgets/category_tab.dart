import 'package:flutter/cupertino.dart';

import '../../../../../comon/widgets/brands/brand_showcase.dart';
import '../../../../../comon/widgets/layouts/grid_ayout.dart';
import '../../../../../comon/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../../comon/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
      children: [
        UBrandshowcase(
          images: [UImages.productImage1, UImages.productImage2,UImages.productImage31],
        ),
        UBrandshowcase(
          images: [UImages.productImage3, UImages.productImage32,UImages.productImage4a],

        ), SizedBox(height: USizes.spaceBtwItems,),
        USectionHeading(title: "You might like", onPressed: () {}),
        UGridLayout(
          itemCount: 6,
          itemBuilder: (context, index) => const UProductCardVertical(),
        ),
        SizedBox(height: USizes.spaceBtwSections,),
      ],
    );
  }
}
