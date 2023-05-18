import 'package:flutter/material.dart';
import 'package:grocery_app_ui/CustomComponenets/BestSellingSection.dart';
import 'package:grocery_app_ui/CustomComponenets/CategoriesSection.dart';
import 'package:grocery_app_ui/CustomComponenets/OffersSection.dart';
import 'package:grocery_app_ui/CustomComponenets/Searchbar.dart';
import 'package:grocery_app_ui/CustomComponenets/AppBar.dart';

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
              build_Search_Bar(context),
              build_Offers_Section(context),
              build_Categories_Section(context),
              buildBestSellingSection(context),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
