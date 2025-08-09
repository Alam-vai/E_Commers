import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../comon/widgets/appbar/appbar.dart';
import '../../../../../comon/widgets/products/cart/cart_counter_icon.dart';
import '../../../../../comon/widgets/textfields/search_bar.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../comon/widgets/custom_shape/primary_header_container.dart';

class UStorePrimaryHeader extends StatelessWidget {
  const UStorePrimaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: USizes.storePrimaryHeaderHeight),

        // Primary Header Container
        UPrimaryHeaderContainer(
          height: USizes.storePrimaryHeaderHeight,
          child: UAppBar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),
            ),
            actions: [
              UCartCounterIcon(),
            ],
          ),
        ),

        // Search Bar
        USearchBar(),
      ],
    );
  }
}
