import 'package:flutter/material.dart';
import 'package:grocery_app_ui/CustomComponenets/CustomGridView.dart';

import '../lists/listData.dart';

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
      buildCustomGridView(context, itemImages.sublist(0,2), itemTitles.sublist(0,2), priceperkg.sublist(0,2),description.sublist(0,2)),
    ],
  );
}
