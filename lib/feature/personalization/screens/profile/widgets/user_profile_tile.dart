import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
      trailing: IconButton(onPressed: () {}, icon: Icon(Iconsax.edit)),
    );
  }
}