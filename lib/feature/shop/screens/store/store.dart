import 'package:flutter/material.dart';
import 'package:socialclone/comon/widgets/custom_shape/rounded_container.dart';
import 'package:socialclone/comon/widgets/layouts/grid_ayout.dart';

import 'package:socialclone/comon/widgets/texts/section_heading.dart';
import 'package:socialclone/feature/shop/screens/store/widgets/category_tab.dart';
import 'package:socialclone/feature/shop/screens/store/widgets/store_primary_header.dart';
import 'package:socialclone/utils/constants/colors.dart';
import 'package:socialclone/utils/images.dart';

import '../../../../comon/widgets/appbar/tabbar.dart';
import '../../../../comon/widgets/brands/brand_card.dart';
import '../../../../comon/widgets/brands/brand_showcase.dart';
import '../../../../comon/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 460,
                floating: false,
                pinned: true,
                flexibleSpace: SingleChildScrollView(
                  child: Column(
                    children: [
                      UStorePrimaryHeader(),
                      SizedBox(height: USizes.spaceBtwItems),
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
                bottom: UTabBar(
                  tabs: [
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Fashion")),
                    Tab(child: Text("Electronics")),
                    Tab(child: Text("Home & Living")),
                    Tab(child: Text("Beauty & Health")),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              UCategoryTab(),

            ],
          ),
        ),
      ),
    );
  }
}

