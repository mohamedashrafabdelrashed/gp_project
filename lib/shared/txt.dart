import 'package:flutter/cupertino.dart';

Widget txt(String text ,Color color, double size) {
  return Text(
    text,
    style:TextStyle(color:color,
    fontWeight: FontWeight.bold,
    fontSize:size,),

  );
}