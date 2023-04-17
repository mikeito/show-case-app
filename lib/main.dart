import 'package:flutter/material.dart';
import 'package:show_case_app/furnitureshop/screens/home_screen.dart';
import 'package:show_case_app/furnitureshop/screens/single_product_screen.dart';
import 'package:show_case_app/furnitureshop/screens/welcome_screen.dart';
import 'package:show_case_app/oilshop/screens/home_oil_screen.dart';
import 'package:show_case_app/oilshop/screens/shopping_bag_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SafeArea(
        child: HomeOilScreen(),
      ),
    );
  }
}
