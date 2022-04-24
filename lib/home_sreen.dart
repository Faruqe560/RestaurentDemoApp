import 'package:bitm24restuarent/data/data.dart';
import 'package:bitm24restuarent/widgets/recent_order.dart';
import 'package:bitm24restuarent/widgets/restaurant_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 191, 243, 182),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 79, 231, 52),
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
          title: Text("Food Delivery"),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "(${currentUser.cart?.length})",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                label: Text("Search"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.close),
              )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RecentOrder(),
            RestaurentList(),
          ],
        ));
  }
}
