// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:recycling_app/pro/component/divider.dart';
import 'package:recycling_app/pro/component/latestrectangle.dart';
import 'package:recycling_app/pro/component/listuser.dart';
import 'package:recycling_app/pro/component/txt.dart';
import 'package:recycling_app/pro/pages/more.dart';
import 'package:recycling_app/shared/colour_constant.dart';
import 'package:recycling_app/shared/elvated_button.dart';
import 'package:recycling_app/shared/search.dart';

class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  String text = 'amira';
  bool abbearing_search = false;
  @override
  void initState() {
    abbearing_search = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green_color,
      drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        // backgroundColor: green_color,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: txt(
                'Amira Mahmoud',
                Colors.white,
                18,
              ),
              accountEmail: txt(
                'am6391@gmail.com',
                Colors.white,
                18,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/iron wire.jpeg"),
                backgroundColor: Colors.white,
              ),
              decoration: BoxDecoration(
                
                  image: DecorationImage(fit: BoxFit.cover,
                      image: AssetImage("assets/images/cooper.jpeg",))),
            ),
            ListTile(
                title: Text("Personal account"),
                leading: Icon(
                  Icons.person,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
            divider(
              0.5,
              1,
              green_color,
            ),
            ListTile(
                title: Text("payment"),
                leading: Icon(
                  Icons.payment,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
            divider(
              0.5,
              3,
              green_color,
            ),
            ListTile(
                title: Text("favourite"),
                leading: Icon(
                  Icons.favorite,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
            divider(
              0.5,
              3,
              green_color,
            ),
            ListTile(
                title: Text("common questions"),
                leading: Icon(
                  Icons.question_mark,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
            divider(
              0.5,
              3,
              green_color,
            ),
            ListTile(
                title: Text("Contact us"),
                leading: Icon(
                  Icons.headset_mic,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
            divider(
              0.5,
              3,
              green_color,
            ),
            ListTile(
                title: Text("terms and conditions"),
                leading: Icon(
                  Icons.policy,
                  size: 30,
                  color: green_color,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => more(),
                    ),
                  );
                }),
          ],
        ),
      ),
      appBar: AppBar(
        // leading: IconButton(
        //     onPressed: () {

        //     },
        //     icon: Icon(
        //       Icons.notification_important,
        //       size: 30,
        //       color: Color.fromARGB(237, 255, 255, 255),
        //     )),
        title: Text(
          'hello ${text.toString()}',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  abbearing_search = !abbearing_search;
                });
              },
              icon: Icon(
                !abbearing_search ? Icons.search : Icons.search_off,
                color: Colors.white,
              ))
        ],
        backgroundColor: green_color,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                color: green_color,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Visibility(visible: abbearing_search, child: search_bar()),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          button_style(Data: "All"),
                          button_style(Data: "Timber"),
                          button_style(Data: "iron"),
                          button_style(Data: "Plastic"),
                          button_style(Data: "paper"),
                        ],
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 640,
                margin: EdgeInsets.only(top: abbearing_search ? 0 : 18),
                padding: EdgeInsets.fromLTRB(10, 15, 10, 3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: ListView(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'latest ',
                          style: TextStyle(
                            color: green_color,
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          Icons.tune_outlined,
                          color: green_color,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        latestrectangle(
                            'assets/assetGP/razanwood.jpg',
                            'Razan wood',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                            '18.000 LE'),
                        latestrectangle(
                            'assets/assetGP/iron.jfif',
                            'iron',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                            '25.000 LE'),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        latestrectangle(
                            'assets/assetGP/razanwood.jpg',
                            'Razan wood',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                            '18.000 LE'),
                        latestrectangle(
                            'assets/assetGP/iron.jfif',
                            'iron',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                            '25.000 LE'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        latestrectangle(
                            'assets/assetGP/plastec.jfif',
                            'Plastic',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                            '18.000 LE'),
                        latestrectangle(
                            'assets/assetGP/corashenew.jpg',
                            'Crochet paper',
                            '5 1h : 25m : 47s',
                            'The tender begins with',
                            '18.000 LE'),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
