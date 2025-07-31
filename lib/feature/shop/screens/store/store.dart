import 'package:flutter/material.dart';

import '../../../../comon/widgets/textfields/search_bar.dart';
import '../../../../utils/constants/sizes.dart';
import '../home/widgets/home_appbar.dart';
import '../home/widgets/home_categories.dart';
import '../home/widgets/primary_header_container.dart';

class StoreScrrem extends StatefulWidget {
  const StoreScrrem({super.key});

  @override
  State<StoreScrrem> createState() => _StoreScrremState();
}

class _StoreScrremState extends State<StoreScrrem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading:  false,
              flexibleSpace: Stack(
                children: [
                  SizedBox(height: USizes.storePrimaryHeaderHeight * 10),

                  // Primary Header Container
                  UPrimaryHeaderContainer(child: Container()),

                  // Search Bar
                  USearchBar(),
                ],
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
