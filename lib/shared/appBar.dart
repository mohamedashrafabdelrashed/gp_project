import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/shared/txt.dart';


Widget appBar(String name1,String name2,Color color) {

  appBar:
  return AppBar(

      

      title:Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           txt('$name1',  Colors.grey.shade100,  30,),
          txt('$name2',  color,  16,),
        ],
      ),

      actions: [Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.gavel_rounded,size: 40,color: Colors.white,),
      )],
      backgroundColor:  Color(0xff497126),
  );

}