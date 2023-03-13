import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'phone.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyPhone(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    double ht = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          height: ht,
          width: wt,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/vtnbg.png"),
                fit: BoxFit.cover),
          ),
          child: Container(
            child: Center(
              child: Image.asset(
                'assets/images/vtnlogo.png',
                fit: BoxFit.fitHeight,
                height: 250,
                width: 250,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
