import 'package:flutter/material.dart';
import 'package:recycling_app/screens/congratulation.dart';
import 'package:recycling_app/screens/home.dart';
import 'package:recycling_app/screens/intro.dart';
import 'package:recycling_app/screens/loser.dart';
import 'package:recycling_app/screens/navigation_page.dart';


void main() {
  runApp(Recycling_app());
}

class Recycling_app extends StatelessWidget {
  const Recycling_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: navigation_page(),
    );
  }
}
