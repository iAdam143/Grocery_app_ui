import 'package:flutter/material.dart';

import '../screens/cart.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final buttonWidth = constraints.maxWidth / 5;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.home),
                        onPressed: () {
                          // Handle home button tap
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.grid_3x3_rounded),
                        onPressed: () {
                          // Handle cart button tap
                        },
                      ),
                      SizedBox(width: buttonWidth), // Empty space for the middle button
                      IconButton(
                        icon: Icon(Icons.edit_note),
                        onPressed: () {
                          // Handle profile button tap
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.person),
                        onPressed: () {
                          // Handle settings button tap
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Transform.translate(
              offset: Offset(0, -10), // Adjust the offset as needed
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0, 2),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart, color:Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartScreen()),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
