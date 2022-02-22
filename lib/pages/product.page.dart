// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white.withOpacity(0),
            elevation: 0.0,
            expandedHeight: 500,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset(
                "assets/product-10.png",
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          )
        ];
      },
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Text(
              "Dry fit long sleeve",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Text("by Nike"),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                "Nike Dry-Fit is a polyester fabric designed to help you keep dry, so you can more comfortably work harder and longer."),
          ),
        ],
      ),
    ));
  }
}
