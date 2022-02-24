// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String image;
  final String name;
  final String brand;
  final String description;

  const ProductPage(
      {Key? key,
      required this.image,
      required this.name,
      required this.brand,
      required this.description})
      : super(key: key);

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
                image,
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
              name,
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
            child: Text("by $brand"),
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
            child: Text(description),
          ),
        ],
      ),
    ));
  }
}
