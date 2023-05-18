import 'package:flutter/material.dart';

final List<Map<String, dynamic>> _offers = [
  {
    'image': 'assets/images/Rectangle 4377.png',
    'text': 'Get 20% off',
  },
  {
    'image': 'assets/images/Rectangle 4377.png',
    'text': 'Buy 1 get 1 free on fruits',
  },
  {
    'image': 'assets/images/Rectangle 4377.png',
    'text': 'Flat 20% off on groceries',
  },
];

Widget build_Offers_Section(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.2,
    child: PageView.builder(
      itemCount: _offers.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Image.asset(
                _offers[index]['image'],
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 0,
                right: 0,
                left: MediaQuery.of(context).size.width * 0.5,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      bottomLeft: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _offers[index]['text'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontFamily: 'DM Sans',
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button click
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.zero,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Grab Offer',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'DM Sans',
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.green,
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
