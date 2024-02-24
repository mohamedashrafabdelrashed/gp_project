
import 'package:flutter/material.dart';
import 'package:recycling_app/pro/component/txt.dart';

class package extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: txt('package', Colors.black, 40)),
      ),
    );
  }

}