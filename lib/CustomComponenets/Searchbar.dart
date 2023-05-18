import 'package:flutter/material.dart';

Widget build_Search_Bar(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal : MediaQuery.of(context).size.width * 0.04),
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
