import 'dart:html';

import 'package:bitm24restuarent/data/data.dart';
import 'package:bitm24restuarent/models/order.dart';
import 'package:flutter/material.dart';

class RecentOrder extends StatefulWidget {
  RecentOrder({Key? key}) : super(key: key);

  @override
  State<RecentOrder> createState() => _RecentOrderState();
}

class _RecentOrderState extends State<RecentOrder> {
  buildRecentOrder(BuildContext context, Order order) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 270,
      //height: 220,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 99, 245, 104),
          borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image(
              image: AssetImage(
                '${order.food!.imageUrl}',
              ),
              height: 120,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${order.food!.name}",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Text("${order.restaurant!.name}"),
                Text("${order.date}"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(255, 23, 92, 2),
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Order",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 47, 31, 31)),
        ),
        Container(
          // color: Color.fromARGB(255, 163, 240, 140),
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders!.length,
              itemBuilder: (context, index) {
                Order order = currentUser.orders![index];
                return buildRecentOrder(context, order);
              }),
        ),
      ],
    );
  }
}
