import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget listuser(String txt,Color color,double size,Icon icon){
  return ListTile(
    title: Text('$txt',style: TextStyle(
        color:color,
        fontSize:size, fontWeight: FontWeight.bold),),

    trailing: icon,
);
}