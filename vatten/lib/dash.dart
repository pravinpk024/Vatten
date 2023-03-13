// ignore_for_file: unused_import, prefer_const_constructors
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'phone.dart';

class Mydash extends StatefulWidget {
  const Mydash({super.key});

  @override
  State<Mydash> createState() => _MydashState();
}

class _MydashState extends State<Mydash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'VATTEN',
        ),
        backgroundColor: Color.fromARGB(255, 10, 103, 190),
      ),
      body: Center(
        /** Card Widget **/
        child: Card(
          elevation: 10,
          shadowColor: Colors.black,
          color: Colors.blueAccent[10],
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue[300],
                    child: Text("CONSUMPTION METRIC",
                        style: TextStyle(fontSize: 15)),
                  ),
                  const SizedBox(
                    height: 20,
                  ), //SizedBox

                  Text(
                    'Daily Usage Stats',
                    style: TextStyle(
                      fontSize: 30,
                      decorationThickness: 10,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  const Text(
                    'Ph',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ), //Textstyle
                  ),
                  const Text(
                    'Turbidity',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ), //Textstyle
                  ),
                  const Text(
                    'TDS',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () => 'Null',
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue)),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                      ),
                    ),
                  ) //SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ), //Card
      ), //Center

      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Navigation Bar'),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.analytics,
              ),
              title: const Text('Usage Stats'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
              ),
              title: const Text('Bills & Payments'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.emoji_people,
              ),
              title: const Text('Raise a query'),
              onTap: () async {
                await launchUrlString("mailto://helpdesk.vatten@gmail.com");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.groups,
              ),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyPhone()));
              },
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                child: Center(child: Row()),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
