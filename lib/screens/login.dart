// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recycling_app/screens/follow_Auctions.dart';
import 'package:recycling_app/screens/follow_order.dart';
import 'package:recycling_app/screens/forget_Password.dart';
import 'package:recycling_app/screens/navigation_page.dart';
import 'package:recycling_app/screens/register.dart';
import 'package:recycling_app/shared/Input_decoration.dart';
import 'package:recycling_app/shared/colour_constant.dart';
import 'package:recycling_app/shared/logo.dart';

class login_page extends StatefulWidget {
  login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  bool isVisable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              logo(),
              SizedBox(
                height: 140,
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    obscureText: false,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Enter Email : ",
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.email)))),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    obscureText: isVisable ? false : true,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Enter Password : ",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isVisable = !isVisable;
                              });
                            },
                            icon: isVisable
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off)))),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return forgetPassword();
                      }));
                    },
                    child: Text(
                      "forget password",
                      style: TextStyle(
                          color: Color(0xff366553),
                          decoration: TextDecoration.underline,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return navigation_page();
                      }));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff0E7442)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15))),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    Text(" Don't have an account ",
                        style: TextStyle(color: logo_color, fontSize: 16)),
                    GestureDetector(
                      child: Text(
                        "register",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xff366553),
                            fontSize: 16),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return register_page();
                        }));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
