import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../comon/widgets/appbar/appbar.dart';
import '../../../../../comon/widgets/products/cart/cart_counter_icon.dart';
import '../../../../../utils/constants/colors.dart';

UAppBar UHomeAppbar (BuildContext context) {
  return UAppBar(
    title: Column(
      children: [
        Text(
          "GOOD MORNING",
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.apply(color: UColors.grey),
        ),
        Text(
          "UnKnown Pro",
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: UColors.white),
        ),
      ],
    ),

    actions: [UCartCounterIcon()],
  );
}
