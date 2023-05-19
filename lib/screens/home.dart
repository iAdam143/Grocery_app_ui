import 'package:flutter/material.dart';
import 'package:grocery_app_ui/CustomComponenets/BestSellingSection.dart';
import 'package:grocery_app_ui/CustomComponenets/CategoriesSection.dart';
import 'package:grocery_app_ui/CustomComponenets/OffersSection.dart';
import '../CustomComponenets/SearchBar.dart';
import 'package:grocery_app_ui/CustomComponenets/AppBar.dart';
import '../CustomComponenets/navbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          // Unfocus the text field when tapped
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: buildAppBar(context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Search_Bar(),
                build_Offers_Section(context),
                build_Categories_Section(context),
                buildBestSellingSection(context),
              ],
            ),
          ),
          bottomNavigationBar:
          CustomNavigationBar(), // Use the custom navigation bar
        ),
      ),
    );
  }
}
