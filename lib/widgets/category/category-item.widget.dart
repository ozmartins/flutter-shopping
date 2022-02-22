// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String image;

  const CategoryItem({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 1),
              blurRadius: 5,
              spreadRadius: 2),
        ],
        borderRadius: BorderRadius.circular(64),
      ),
      child: Image.asset(image),
    );
  }
}
