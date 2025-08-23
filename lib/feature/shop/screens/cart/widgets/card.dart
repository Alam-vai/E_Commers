import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/comon/styles/padding.dart';
import 'package:socialclone/comon/widgets/icons/circular_icon.dart';
import 'package:socialclone/comon/widgets/images/rounded_image.dart';
import 'package:socialclone/comon/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:socialclone/comon/widgets/texts/product_title_text.dart';
import 'package:socialclone/utils/constants/colors.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/images.dart';

import '../../../../../comon/widgets/appbar/appbar.dart';
import '../../../../../comon/widgets/products/cart/cart_item.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: USizes.spaceBtwItems),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                // Cart Item
                UCartItem(),
                // Price Container Button
                Row(children: [UCircularIcon(icon: Iconsax.minus)]),
              ],
            );
          },
        ),
      ),
    );
  }
}
