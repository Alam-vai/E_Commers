
import 'package:flutter/material.dart';

import '../../../utils/constants/texts.dart';

class ULoginDivider extends StatelessWidget {
  const ULoginDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(indent: 60, endIndent: 5)),
        Text(
          UTexts.orSignInWith,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Expanded(child: Divider(indent: 5, endIndent: 60)),
      ],
    );
  }
}