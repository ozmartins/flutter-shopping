// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
import 'package:shopping/widgets/product/product-list.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF5F5F5),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            SearchBox(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: CategoryList(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best selling",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("See all"),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              child: ProductList(),
            ),
          ],
        ),
      ),
    );
  }
}
