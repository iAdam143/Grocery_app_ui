import 'package:flutter/material.dart';

Widget buildColumn(
    String imagePath, String title, String description, BuildContext context) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Expanded(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04,
            vertical: 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 4.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.add_circle,
                    size: 32,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildCustomGridView(
  BuildContext context,
  List<String> itemImages,
  List<String> itemTitles,
  List<String> itemDescriptions,
) {
  final double screenWidth = MediaQuery.of(context).size.width;
  int crossAxisCount = 2;

  if (screenWidth >= 600) {
    crossAxisCount = 4;
  }

  final crossAxisSpacing = screenWidth * 0.04;
  final mainAxisSpacing = MediaQuery.of(context).size.height * 0.03;
  final horizontalPadding = screenWidth * 0.04;

  return SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: crossAxisSpacing,
          mainAxisSpacing: mainAxisSpacing,
        ),
        itemCount: itemImages.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return buildColumn(
            itemImages[index],
            itemTitles[index],
            itemDescriptions[index],
            context,
          );
        },
      ),
    ),
  );
}
