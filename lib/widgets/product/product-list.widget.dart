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
          ProductItem(
            image: "assets/product-1.png",
            brand: "Nike",
            description: "Product 1",
            name: "Product 1",
            price: "100",
          ),
          ProductItem(
            image: "assets/product-2.png",
            brand: "Nike",
            description: "Product 2",
            name: "Product 2",
            price: "200",
          ),
          ProductItem(
            image: "assets/product-3.png",
            brand: "Nike",
            description: "Product 3",
            name: "Product 3",
            price: "300",
          ),
          ProductItem(
            image: "assets/product-4.png",
            brand: "Nike",
            description: "Product 4",
            name: "Product 4",
            price: "400",
          ),
          ProductItem(
            image: "assets/product-5.png",
            brand: "Nike",
            description: "Product 5",
            name: "Product 5",
            price: "500",
          ),
        ],
      ),
    );
  }
}
