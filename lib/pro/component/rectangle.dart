import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget rectangle(String text){

 return  Container(
   width: 70,
   height: 30,

   decoration: ShapeDecoration(
     shape: OutlineInputBorder(
         borderSide: BorderSide(
           color: Colors.white,
         )
     )  ,                       ),
   child: MaterialButton(onPressed: (){
   },
     child: Text(
       '${text}',style: TextStyle(
       color: Colors.white,
       fontSize: 10,
       fontWeight: FontWeight.bold,
     ),
     ),
   ),
 );
  }

