import 'package:flutter/material.dart';
import 'package:grocery_app_ui/CustomComponenets/CustomGridView.dart';

List<String> itemImages = [
  'assets/images/bell_pepper.png',
  'assets/images/ginger.png',
  'assets/images/lectuse.png',
  'assets/images/butternut.png',
  'assets/images/carrots.png',
  'assets/images/brocolli.png',
  'assets/images/potato.jpg',
  'assets/images/onion.jpg',
];

List<String> itemTitles = [
  'Bell Pepper',
  'Arabic Ginger',
  'Fresh Lectuse',
  'Butternut Squash',
  'Organic Carrots',
  'Fresh Broccoli',
  'Fresh Potato',
  'Fresh Onion',
];

List<String> itemDescriptions = [
  '1kg, 2\$',
  '1kg, 4\$',
  '1kg, 2\$',
  '1kg, 8\$',
  '1kg, 4\$',
  '1kg, 2\$',
  '1kg, 2\$',
  '1kg, 2\$',
];

class VegetablesScreen extends StatefulWidget {
  @override
  _VegetablesScreenState createState() => _VegetablesScreenState();
}

class _VegetablesScreenState extends State<VegetablesScreen> {
  bool _showSearchBar = false;

  void _toggleSearchBar() {
    setState(() {
      _showSearchBar = !_showSearchBar;
    });
  }

  Widget buildSearchBar(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Search Category',
            border: InputBorder.none,
            icon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar2(BuildContext context) {
    final double searchBarHeight = _showSearchBar
        ? MediaQuery.of(context).size.height * 0.1
        : kToolbarHeight;

    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
          size: 12,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: searchBarHeight,
            child: _showSearchBar ? buildSearchBar(context) : const SizedBox(),
          ),
        ],
      ),
      centerTitle: true,
      title: _showSearchBar
          ? null
          : const Text(
              'Vegetables 🌽',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'DM Sans',
                height: 1,
              ),
            ),
      actions: _showSearchBar
          ? null
          : [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 24,
                ),
                onPressed: _toggleSearchBar,
              ),
            ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildAppBar2(context),
            Expanded(
              child: buildCustomGridView(
                context,
                itemImages,
                itemTitles,
                itemDescriptions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
