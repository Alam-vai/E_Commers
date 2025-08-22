import 'package:flutter/material.dart';
import 'package:socialclone/comon/widgets/Product_price_text.dart';
import 'package:socialclone/comon/widgets/custom_shape/rounded_container.dart';
import 'package:socialclone/comon/widgets/texts/product_title_text.dart';
import 'package:socialclone/comon/widgets/texts/section_heading.dart';
import 'package:socialclone/utils/constants/colors.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/helpers/helper_functions.dart';

import '../../../../../comon/widgets/chips/choice_chip.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        URoundedContainer(
          padding: EdgeInsets.all(USizes.md),
          backgroundColor: dark ? UColors.darkerGrey : UColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  //Selected Attributes Pricing and Stock
                  USectionHeading(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  SizedBox(width: USizes.spaceBtwItems),

                  Column(
                    children: [
                      // Title and price
                      Row(
                        children: [
                          UProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),

                          Text(
                            '250',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(
                                  decoration: TextDecoration.lineThrough,
                                ),
                          ),
                          SizedBox(width: USizes.spaceBtwItems),
                          UProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),
                          UProductPriceText(price: '200'),
                        ],
                      ),
                      Row(
                        children: [
                          UProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Attributes Description
              UProductTitleText(
                title: "This is a product of iphone 11 with 512 GB",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: USizes.spaceBtwItems),

        //Attributes Section Heading
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: "Colors", showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(
                  text: 'Red',
                  selected: true,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        // Attributes Sizes

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            USectionHeading(title: "Sizes", showActionButton: false),
            SizedBox(height: USizes.spaceBtwItems / 2),
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(
                  text: 'Small',
                  selected: true,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Medium',
                  selected: false,
                  onSelected: (value) {},
                ),
                UChoiceChip(
                  text: 'Large',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
