import 'package:flutter/material.dart';

import '../../../../../comon/styles/padding.dart';
import '../../../../../comon/widgets/Product_price_text.dart';
import '../../../../../comon/widgets/custom_shape/rounded_container.dart';
import '../../../../../comon/widgets/images/circular_image.dart';
import '../../../../../comon/widgets/texts/brand_title_with_verify_icon.dart';
import '../../../../../comon/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';

class UProductMetaData extends StatelessWidget {
  const UProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UPadding.screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // sale tag Sale Price Actual Price And Share Button
          Row(
            children: [
              URoundedContainer(
                radius: USizes.sm,
                backgroundColor: UColors.yellow.withValues(alpha: 0.8),
                padding: const EdgeInsets.symmetric(
                  horizontal: USizes.sm,
                  vertical: USizes.xs,
                ),
                child: UProductPriceText(price: '210'),
              ),
              SizedBox(width: USizes.spaceBtwItems),
              Text(
                "\$250",
                style: Theme.of(context).textTheme.titleSmall!.apply(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(width: USizes.spaceBtwItems),
              UProductPriceText(price: "150", isLarge: true),
              Spacer(),
              //Share Button
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            ],
          ),

          SizedBox(height: USizes.spaceBtwItems / 1.5),

          UProductTitleText(title: "Apple Iphone 11"),
          SizedBox(height: USizes.spaceBtwItems / 1.5),
          // Product Stock Status
          Row(
            children: [
              UProductTitleText(title: "Status"),
              SizedBox(width: USizes.spaceBtwItems),
              Text(
                " : In Stock",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),

          SizedBox(height: USizes.spaceBtwItems / 1.5),

          Row(
            children: [
              UCircularImage(
                padding: 0,
                image: UImages.bataLogo,
                width: 32.0,
                height: 32.0,
              ),
              SizedBox(width: USizes.spaceBtwItems),
              UBrandTitleWithVerifyIcon(title: "Bata", ),
            ],
          ),
        ],
      ),
    );
  }
}