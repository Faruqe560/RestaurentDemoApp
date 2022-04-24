import 'dart:async';

import 'package:bitm24restuarent/home_sreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(251, 108, 247, 125),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 220, 240, 210),
              radius: 40,
              child: Positioned(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/salmon.jpg"),
                  radius: 30,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation(Color.fromARGB(255, 250, 249, 248)))
          ],
        ),
      ),
    );
  }
}
