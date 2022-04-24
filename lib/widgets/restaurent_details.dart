import 'dart:html';

import 'package:bitm24restuarent/models/food.dart';
import 'package:bitm24restuarent/models/restaurant.dart';
import 'package:bitm24restuarent/widgets/contact_page.dart';
import 'package:flutter/material.dart';

class RestaurentDetails extends StatefulWidget {
  Restaurant? restaurent;
  RestaurentDetails({this.restaurent});

  @override
  State<RestaurentDetails> createState() => _RestaurentDetailsState();
}

class _RestaurentDetailsState extends State<RestaurentDetails> {
  _buildManuItem(Food menuItem) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 140.0,
            width: 140.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image:
                    DecorationImage(image: AssetImage("${menuItem.imageUrl}"))),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 243, 182),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage("${widget.restaurent!.imageUrl}"),
                  height: 210,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.restaurent!.name}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("${widget.restaurent!.address}"),
                  ],
                ),
                Text("0.2 miles"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactPage()));
                  },
                  child: Container(
                    //margin: EdgeInsets.all(10),
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 99, 245, 104),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(child: Text("Contact")),
                  ),
                ),
                InkWell(
                  onTap: (() {}),
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 99, 245, 104),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(child: Text("Review")),
                  ),
                ),
              ],
            ),
            Text(
              "Manu",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  children:
                      List.generate(widget.restaurent!.menu!.length, (index) {
                    Food food = widget.restaurent!.menu![index];
                    return _buildManuItem(food);
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
