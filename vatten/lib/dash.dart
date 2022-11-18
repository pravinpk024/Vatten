import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:vatten/phone.dart';

import 'draw.dart';

class Mydash extends StatelessWidget {
  const Mydash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Dashboard',
        ),
        backgroundColor: Color.fromARGB(255, 10, 103, 190),
      ),
      //body: const Mydraw()
    );
  }
}
