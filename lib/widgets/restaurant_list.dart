import 'dart:html';

import 'package:bitm24restuarent/data/data.dart';
import 'package:bitm24restuarent/models/restaurant.dart';
import 'package:bitm24restuarent/widgets/restaurent_details.dart';
import 'package:flutter/material.dart';

class RestaurentList extends StatefulWidget {
  RestaurentList({Key? key}) : super(key: key);

  @override
  State<RestaurentList> createState() => _RestaurentListState();
}

class _RestaurentListState extends State<RestaurentList> {
  buildRestaureant() {
    List<Widget> restaurentList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurentList.add(GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RestaurentDetails(
                        restaurent: restaurant,
                      )));
        },
        child: Container(
          margin: EdgeInsets.all(10.0),
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color.fromARGB(255, 99, 245, 104),
          ),
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    image: AssetImage("${restaurant.imageUrl}"),
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${restaurant.name}"),
                    Text("${restaurant.address}"),
                    Text("0.2 miles"),
                  ],
                ),
              )
            ],
          ),
        ),
      ));
    });
    return Column(
      children: restaurentList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Near by Restaurent",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        buildRestaureant(),
      ],
    );
  }
}
