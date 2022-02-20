// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: productList(),
            ),
          ),
          Container(
            color: Colors.black12,
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TOTAL",
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("\$ 4250",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: EdgeInsets.only(right: 20),
                  child: FlatButton(
                    child: Text("Checkout"),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget productList() {
  return ListView(
    children: [
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
    ],
  );
}

Widget productItem() {
  return Container(
    height: 120,
    margin: EdgeInsets.all(15),
    child: Row(
      children: [
        Container(
          height: 100,
          width: 100,
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/product-1.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Título do produto"),
              Text(
                "\$ 200",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("+"),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Text("1"),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text("-"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}