import 'package:bitm24restuarent/data/splash_screen.dart';
import 'package:bitm24restuarent/home_sreen.dart';
import 'package:bitm24restuarent/widgets/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
