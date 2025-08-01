import 'package:flutter/material.dart';

import 'package:socialclone/comon/widgets/custom_shape/rounded_container.dart';
import 'package:socialclone/comon/widgets/images/rounded_image.dart';
import 'package:socialclone/comon/widgets/texts/brand_title_with_verify_icon.dart';
import 'package:socialclone/comon/widgets/texts/section_heading.dart';
import 'package:socialclone/feature/shop/screens/store/widgets/store_primary_header.dart';
import 'package:socialclone/utils/constants/enums.dart';
import 'package:socialclone/utils/images.dart';

import '../../../../comon/widgets/brands/brand_card.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 300,
              floating: true,
              pinned: true,
              flexibleSpace: Column(
                children: [
                  UStorePrimaryHeader(),
                  SizedBox(height: USizes.spaceBtwItems,),
                  // Brand Heading
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: USizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        USectionHeading(
                          title: "Brands",
                          onPressed: () {}, // Add functionality here
                        ),
                        // Brand Cards
                        SizedBox(
                          height: USizes.brandCardHeight,
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                SizedBox(width: USizes.spaceBtwItems),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) => UBrandCard(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
