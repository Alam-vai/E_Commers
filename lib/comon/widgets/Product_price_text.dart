
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class UProductPriceText extends StatelessWidget {
  const UProductPriceText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "20%",
      style: Theme.of(
        context,
      ).textTheme.labelLarge?.apply(color: UColors.black),
    );
  }
}