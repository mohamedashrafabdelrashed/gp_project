import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:recycling_app/pro/component/txt.dart';

class camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: ElevatedButton(
                onPressed: ()async {
                 await ImageSource.gallery;
                },
                child: Text("enter"))),
      ),
    );
  }
}
