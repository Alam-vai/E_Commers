import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:socialclone/comon/widgets/texts/section_heading.dart';
import 'package:socialclone/feature/personalization/screens/profile/widgets/profile_primary_header.dart';
import 'package:socialclone/feature/personalization/screens/profile/widgets/settings_menu_tile.dart';
import 'package:socialclone/feature/personalization/screens/profile/widgets/user_profile_tile.dart';
import 'package:socialclone/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UProfilePrimaryHeader(),
        
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  // user Profile details
                  UProfileTile(),
                  SizedBox(height: USizes.spaceBtwItems),
        
                  //Account Setting Heading
                  USectionHeading(
                    title: 'Account Setting',
                    showActionButton: false,
                  ),
        
                  //Settings Menu Tiles
                  SettingsMenuTile(
                    title: 'My Addresses ',
                    subtile: 'Set shopping delivery addresses ',
                    icon: Iconsax.safe_home,
                  ),
                  SettingsMenuTile(
                    title: 'My Cart ',
                    subtile: 'Add remove products and move to checkout ',
                    icon: Iconsax.shopping_cart,
                  ),
        
                  SettingsMenuTile(
                    title: 'My Orders ',
                    subtile: 'In-progress,  and completed orders ',
                    icon: Iconsax.bag_tick,
                  ),
        
                  SizedBox(height: USizes.spaceBtwSections),
        
                  ///logout section
                  SizedBox(
                    width: double.infinity,
        
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Logout"),
        
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
