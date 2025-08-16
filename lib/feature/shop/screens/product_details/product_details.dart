import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/comon/styles/padding.dart';
import 'package:socialclone/comon/widgets/appbar/appbar.dart';
import 'package:socialclone/comon/widgets/icons/circular_icon.dart';
import 'package:socialclone/comon/widgets/images/circular_image.dart';
import 'package:socialclone/comon/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:socialclone/comon/widgets/texts/product_title_text.dart';
import 'package:socialclone/feature/shop/screens/product_details/widgets/product_thumbanail_and_slider.dart';
import 'package:socialclone/utils/constants/colors.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import 'package:socialclone/utils/helpers/helper_functions.dart';
import 'package:socialclone/utils/images.dart';

import '../../../../comon/widgets/Product_price_text.dart';
import '../../../../comon/widgets/custom_shape/rounded_container.dart';
import '../../../../comon/widgets/images/rounded_image.dart';

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

            /// -----------------[Product Details]----------------------------
            /// Product Name, Price, Rating, and Add to Cart Button
            UProductMetaData(),

            /// Product Description
            /// Attributes and Specifications
            /// checkout Button
            /// Description
          ],
        ),
      ),
    );
  }
}


