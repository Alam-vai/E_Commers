import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialclone/comon/styles/padding.dart';
import 'package:socialclone/comon/widgets/appbar/appbar.dart';
import 'package:socialclone/comon/widgets/icons/circular_icon.dart';
import 'package:socialclone/comon/widgets/images/user_profile_logo.dart';
import 'package:socialclone/comon/widgets/texts/section_heading.dart';
import 'package:socialclone/feature/personalization/screens/edit_profile/widgets/user_profile_with_icon.dart';
import 'package:socialclone/utils/constants/sizes.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          "Edit Profile ",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              // User Profile Image with Edit Icon
              UserProfileWithEditIcon(),
              SizedBox(height: USizes.spaceBtwSections),

              //Divider
              Divider(
                color: Theme.of(context).colorScheme.outline,
                thickness: 10,
              ),
              SizedBox(height: USizes.spaceBtwSections),

              ///Account settings heading
              USectionHeading(
                title: 'Account Settings',
                showActionButton: false,
              ),
              UserDetailsRow(
                title: "Name",
                value: "Unknown Pro",
                onTap: () {
                  // Handle name tap
                },
              ),
              UserDetailsRow(
                title: "Name",
                value: "Unknown Pro",
                onTap: () {
                  // Handle name tap
                },
              ),
              UserDetailsRow(
                title: "Name",
                value: "Unknown Pro",
                onTap: () {
                  // Handle name tap
                },
              ),

              SizedBox(height: USizes.spaceBtwSections),
              Divider(
                color: Theme.of(context).colorScheme.outline,
                thickness: 10,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              USectionHeading(
                title: 'Account Settings',
                showActionButton: false,
              ),

              UserDetailsRow(
                title: "User ID",
                value: "31231231231",
                onTap: () {
                  // Handle name tap
                },
              ),
              UserDetailsRow(
                title: "Email",
                value: "ALAM234970@GMAIL.COM",
                onTap: () {
                  // Handle name tap
                },
              ),
              UserDetailsRow(
                title: "Phone Number",
                value: "+8801234567890",

                onTap: () {
                  // Handle name tap
                },
              ),
              UserDetailsRow(
                title: "gender",

                value: "Male",

                onTap: () {
                  // Handle name tap
                },
              ),
              SizedBox(height: USizes.spaceBtwItems),

              Divider(
                color: Theme.of(context).colorScheme.outline,
                thickness: 10,
              ),
              SizedBox(height: USizes.spaceBtwSections),

              TextButton(
                onPressed: () {},
                child: Text(
                  " Close Account",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserDetailsRow extends StatelessWidget {
  const UserDetailsRow({
    super.key,
    this.title,
    this.value,
    this.icon = Iconsax.arrow_right_34,
    this.onTap,
  });

  final String? title, value;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: USizes.spaceBtwItems / 1.5,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title ?? "Unknown User",
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                value!,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(flex: 1, child: Icon(icon, size: USizes.iconSm)),
          ],
        ),
      ),
    );
  }
}
