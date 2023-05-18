import 'package:flutter/material.dart';
import 'package:grocery_app_ui/screens/login.dart';

class IntroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Container(
                width: screenWidth * 0.2,
                height: screenHeight * 0.2,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/untitled.png',
                    width: screenWidth * 0.15,
                    height: screenHeight * 0.15,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Text(
                'Get your groceries\n delivered to your home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.normal,
                  height: 1,
                  fontSize: 28,
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              const Text(
                'The best delivery app in town for\n delivering your daily fresh groceries',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.normal,
                  height: 1,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.02),
                  child: const Text(
                    'Shop now',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'DM Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              Expanded(
                child: Image.asset(
                  'assets/images/Paperbagwithhealthyfoodhealthyfoodbackgroundsupermarketfoodconceptshoppingsupermarkethomedeliverymin.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
