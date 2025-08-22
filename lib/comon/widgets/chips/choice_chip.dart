import 'package:flutter/material.dart';
import 'package:socialclone/comon/widgets/custom_shape/circular_container.dart';
import 'package:socialclone/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class UChoiceChip extends StatelessWidget {
  const UChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;

  final Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    bool isColor = UHelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? SizedBox() : Text(text),

      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? UColors.white : null),
      shape: isColor ? CircleBorder() : null,
      padding: isColor ? EdgeInsets.zero : null,
      labelPadding: isColor ? EdgeInsets.zero : null,
      avatar: isColor
          ? UCircularContainer(
              width: 50.0,
              backgroundColor: UHelperFunctions.getColor(text)!,
            )
          : null,
    );
  }
}
