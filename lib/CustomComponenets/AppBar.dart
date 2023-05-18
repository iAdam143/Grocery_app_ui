import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04),
      child: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/Group 289.png'),
      ),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Good Morning',
          style: TextStyle(
            fontFamily: 'DM Sans',
            color: Colors.black,
            fontSize: 10,
          ),
        ),
        Text(
          'Amelia Barlow',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.bold,
            height: 1,
            fontSize: 15,
          ),
        ),
      ],
    ),
    actions: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04, vertical: MediaQuery.of(context).size.height * 0.01),
        child: TextButton(
          onPressed: () {
            // Handle button tap
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            backgroundColor: Colors.white,
          ),
          child: Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.green,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              const Text(
                'Flat',
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  color: Colors.black,
                ),
              ),
              const Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
