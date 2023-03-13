import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vatten/services/dbService.dart';

class MeterReadingsPage extends StatefulWidget {
  @override
  _MeterReadingsPageState createState() => _MeterReadingsPageState();
}

class _MeterReadingsPageState extends State<MeterReadingsPage> {
  final List<Map<String, dynamic>> _meterReadings = [
    {
      'id': 1,
      'type': 'Electricity',
      'reading': 1000,
      'date': '2022-03-10',
    },
    {
      'id': 2,
      'type': 'Gas',
      'reading': 500,
      'date': '2022-03-05',
    },
    {
      'id': 3,
      'type': 'Water',
      'reading': 2000,
      'date': '2022-03-01',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meter Readings'),
      ),
      body: StreamBuilder<Object>(
          stream: DBService().userData(),
          builder: (context, snapshot) {
            DocumentSnapshot ds = snapshot.data as DocumentSnapshot;
            Map data = ds.data() as Map;
            return ListView.builder(
              itemCount: _meterReadings.length,
              itemBuilder: (BuildContext context, int index) {
                final reading = _meterReadings[index];
                return ListTile(
                  title: Text(reading['type']),
                  subtitle: Text(
                      'Reading: ${reading['reading']} on ${reading['date']}'),
                );
              },
            );
          }),
    );
  }
}
