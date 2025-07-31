import 'package:flutter/cupertino.dart';

import '../../../utils/constants/sizes.dart';
import '../products/product_cards/product_card_vertical.dart';

class UGridLayout extends StatelessWidget {
  final int itemCount;

  final double? mainAxisCount;

  final Widget Function(BuildContext context, int index) itemBuilder;

  const UGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisCount = 288,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      padding: EdgeInsets.zero,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: USizes.gridViewSpacing,
        crossAxisSpacing: USizes.gridViewSpacing,
        mainAxisExtent: 288,
      ),
      itemBuilder: (context, index) {
        return UProductCardVertical();
      },
    );
  }
}
