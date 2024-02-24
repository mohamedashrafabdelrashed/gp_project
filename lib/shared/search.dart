import 'package:flutter/material.dart';
import 'package:recycling_app/shared/colour_constant.dart';

class search_bar extends StatelessWidget {
  const search_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12, horizontal: 35),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                hintText: 'Search for wood, iron, etc',
                hintStyle: TextStyle(
                  color: green_color,
                  fontSize: 16,
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: green_color,
                  size: 25,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
  }
}