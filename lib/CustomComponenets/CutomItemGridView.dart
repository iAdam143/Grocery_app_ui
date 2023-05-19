import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String imagePath;
  final String rightText1;
  final String rightText2;

  const GridItem({
    required this.imagePath,
    required this.rightText1,
    required this.rightText2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(rightText1),
              Text(rightText2),
            ],
          ),
        ],
      ),
    );
  }
}