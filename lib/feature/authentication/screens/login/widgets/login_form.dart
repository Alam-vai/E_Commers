import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../comon/widgets/button/elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import '../../signup/signup.dart';

Column ULoginForm() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Email Input
      TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Iconsax.direct_right),
          labelText: UTexts.email,
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(height: USizes.sm),
      // Password Input
      SizedBox(height: USizes.sm),
      TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Iconsax.password_check),
          labelText: UTexts.password,
          suffix: Icon(Iconsax.eye_slash),
          border: OutlineInputBorder(),
        ),
      ),
      SizedBox(height: USizes.spaceBtwInputFields / 2),
      // Remember Me
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              Text(UTexts.rememberMe),
            ],
          ),

          // Forgot Password
          TextButton(onPressed: () {}, child: Text(UTexts.forgetPassword)),
        ],
      ),
      SizedBox(height: USizes.spaceBtwSections),

      // Sign In Button
      UElevatedButton(onPressed: () {}, child: Text(UTexts.signIn)),

      // Create Account Button
      SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          // Corrected this line
          onPressed: () => Get.to(() => SignupScreen()),
          child: Text(UTexts.createAccount),
        ),
      ),
    ],
  );
}
