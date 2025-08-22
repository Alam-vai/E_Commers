import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

import 'package:socialclone/comon/widgets/button/elevated_button.dart';

import 'package:socialclone/comon/widgets/texts/section_heading.dart';
import 'package:socialclone/feature/shop/screens/product_details/widgets/botton_add_to_card.dart';
import 'package:socialclone/feature/shop/screens/product_details/widgets/product_attribues.dart';
import 'package:socialclone/feature/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:socialclone/feature/shop/screens/product_details/widgets/product_thumbanail_and_slider.dart';

import 'package:socialclone/utils/helpers/helper_functions.dart';

import '../../../../comon/styles/padding.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      ///-----------------[Body]---------------------------------
      body: SingleChildScrollView(
        child: Column(
          children: [
            UProdudctThumbnailedAndSlider(),

            Padding(
              padding: UPadding.screenPadding,
              child: Column(
                children: [
                  /// -----------------[Product Details]----------------------------
                  /// Product Name, Price, Rating, and Add to Cart Button
                  UProductMetaData(),

                  /// Product Description
                  /// Attributes and Specifications
                  UProductAttributes(),
                  SizedBox(height: USizes.spaceBtwItems),

                  /// checkout Button
                  UElevatedButton(onPressed: () {}, child: Text("Checkout")),
                  SizedBox(height: USizes.spaceBtwItems),

                  /// Description
                  USectionHeading(
                    title: "Description",
                    showActionButton: false,
                  ),

                  ReadMoreText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    moreStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwItems),
                ],
              ),
            ),
          ],
        ),
      ),

      ///-----------------[Bottom Navigation]---------------------------------
      bottomNavigationBar: UBottomAddToCart(),
    );
  }
}
