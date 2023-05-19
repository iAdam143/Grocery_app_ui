import 'package:flutter/material.dart';
import 'package:grocery_app_ui/CustomComponenets/BestSellingSection.dart';
import 'package:grocery_app_ui/CustomComponenets/CategoriesSection.dart';
import 'package:grocery_app_ui/CustomComponenets/OffersSection.dart';
import 'package:grocery_app_ui/CustomComponenets/Searchbar.dart';
import 'package:grocery_app_ui/CustomComponenets/AppBar.dart';

import '../CustomComponenets/navbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(),
              build_Offers_Section(context),
              build_Categories_Section(context),
              buildBestSellingSection(context),
            ],
          ),
        ),
        bottomNavigationBar: CustomNavigationBar(), // Use the custom navigation bar
      ),
    );
  }
}
