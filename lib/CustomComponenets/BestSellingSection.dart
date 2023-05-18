import 'package:flutter/material.dart';
import 'package:grocery_app_ui/CustomComponenets/CustomGridView.dart';

List<String> itemImages = [
  'assets/images/bell_pepper.png',
  'assets/images/lamb_meat.png',
];

List<String> itemTitles = [
  'Bell Pepper',
  'Lamb Meat',
];

List<String> itemDescriptions = [
  '1kg, 4\$',
  '1kg, 45\$',
];

Widget buildBestSellingSection(BuildContext context) {
  return Column(
    children: [
      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04),
        child: Row(
          children: const [
            Text(
              'Best Selling 🔥',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              'See all',
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: MediaQuery.of(context).size.height * 0.02),
      buildCustomGridView(context, itemImages, itemTitles, itemDescriptions),
    ],
  );
}
