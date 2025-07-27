import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/comon/widgets/products/cart/cart_counter_icon.dart';
import 'package:socialclone/comon/widgets/textfields/search_bar.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/home_appbar.dart';
import 'package:socialclone/feature/shop/screens/home/widgets/primary_header_container.dart';
import 'package:socialclone/utils/constants/colors.dart';
import 'package:socialclone/utils/constants/sizes.dart';
import '../../../../comon/widgets/appbar/appbar.dart';
import '../../../../comon/widgets/custom_shape/circular_container.dart';
import '../../../../utils/helpers/device_helpers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(height: USizes.profilePrimaryHeaderHeight * 2),


          UPrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [UHomeAppbar(context)],
            ),
          ),
          // Search Bar

          USearchBar()

        ],
      ),
    );
  }
}
