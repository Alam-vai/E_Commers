import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/comon/styles/padding.dart';
import 'package:socialclone/comon/widgets/Product_price_text.dart';
import 'package:socialclone/comon/widgets/button/elevated_button.dart';
import 'package:socialclone/comon/widgets/icons/circular_icon.dart';
import 'package:socialclone/comon/widgets/images/rounded_image.dart';
import 'package:socialclone/comon/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:socialclone/comon/widgets/texts/product_title_text.dart';
import 'package:socialclone/utils/constants/colors.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/images.dart';

import '../../../../../comon/widgets/appbar/appbar.dart';
import '../../../../../comon/widgets/products/cart/cart_item.dart';
import '../../../../../comon/widgets/products/cart/product_quantity_with_add_remove.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineSmall),
      ),
      ////--------------------------body--------------------------////
      body: Padding(
        padding: UPadding.screenPadding,
        child: ListView.separated(
          separatorBuilder: (context, index) =>
              SizedBox(height: USizes.spaceBtwSections),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                // Cart Item
                UCartItem(),
                SizedBox(width: USizes.spaceBtwItems),
                // Price Container Button
                Row(
                  children: [
                    SizedBox(width: 70.0),

                    /// Quantity with Add Remove Button`
                    UProductQuantityWithAddRemove(),
                    Spacer(),

                    /// Price
                    UProductPriceText(price: "899"),
                  ],
                ),
              ],
            );
          },
        ),
      ),

      /// --------------------------bottomNavigationBar--------------------------////
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: UElevatedButton(
          onPressed: () {},
          child: Text("Checkout \$2658"),
        ),
      ),
    );
  }
}
