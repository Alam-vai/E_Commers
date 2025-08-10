
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../comon/widgets/icons/circular_icon.dart';
import '../../../../../comon/widgets/images/user_profile_logo.dart';

class UserProfileWithEditIcon extends StatelessWidget {
  const UserProfileWithEditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // User Profile Image
        Center(child: UserProfileLogo()),
        Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child:  Center(child: UCircularIcon(icon: Iconsax.edit, onPressed: () {}))),
      ],
    );
  }
}