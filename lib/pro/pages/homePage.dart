import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/pro/component/txt.dart';


class homePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(child: txt('home', Colors.black, 40)),
      ),
    );
  }

}