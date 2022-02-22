// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'product-item.widget.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProductItem(image: "assets/product-1.png"),
          ProductItem(image: "assets/product-2.png"),
          ProductItem(image: "assets/product-3.png"),
          ProductItem(image: "assets/product-4.png"),
          ProductItem(image: "assets/product-5.png"),
          ProductItem(image: "assets/product-6.png"),
          ProductItem(image: "assets/product-7.png"),
          ProductItem(image: "assets/product-8.png"),
          ProductItem(image: "assets/product-9.png"),
          ProductItem(image: "assets/product-10.png"),
        ],
      ),
    );
  }
}
