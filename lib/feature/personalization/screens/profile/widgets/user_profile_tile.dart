import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/feature/personalization/screens/edit_profile/edit_profile.dart';

class UProfileTile extends StatelessWidget {
  const UProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        "Unknown Pro",
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text(
        "alam@gmail.com",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: IconButton(
        onPressed: () {
          Get.to(() => EditProfileScreen());
        },
        icon: Icon(Iconsax.edit),
      ),
    );
  }
}
