// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:firebase_core/firebase_core.dart' show Firebase;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vatten/dash.dart';
import 'package:vatten/draw.dart';
import 'package:vatten/otp.dart';
import 'package:vatten/phone.dart';
import 'package:vatten/readings.dart';
import 'package:vatten/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VATTEN',
      home: const Splash(),
      routes: {
        'phone': (context) => MyPhone(),
        'verify': (context) => MyVerify(),
        'readings': (context) => MeterReadingsPage(),
        'draw': (context) => Mydraw(),
      },
    );
  }
}
