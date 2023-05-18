import 'package:flutter/material.dart';

final List<Map<String, dynamic>> _categories = [
  {
    'image': 'assets/images/apple.png',
    'name': 'Fruits',
    'route': '/fruits',
  },
  {
    'image': 'assets/images/broccoli.png',
    'name': 'Vegetables',
    'route': '/vegetables',
  },
  {
    'image': 'assets/images/cheese.png',
    'name': 'Dairy',
    'route': '/dairy',
  },
  {
    'image': 'assets/images/meat.png',
    'name': 'Meat',
    'route': '/meat',
  },
];

Widget build_Categories_Section(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04),
        child: Row(
          children: const [
            Text(
              'Categories 😊',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'DM Sans',
                fontSize: 16,
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
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                String route = _categories[index]['route'];
                Navigator.pushNamed(context, route);
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05),
                    width: MediaQuery.of(context).size.width * 0.13,
                    height: MediaQuery.of(context).size.height * 0.13,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        _categories[index]['image'],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    _categories[index]['name'],
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.normal,
                      height: 1,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ],
  );
}
