import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/screens/intro.dart';



void main() {
  runApp(Recycling_app());
}

class Recycling_app extends StatelessWidget {
  const Recycling_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Into_page(),  
    );
  }
}
