import 'package:flutter/material.dart';
import 'package:ht_meters/ht_Meter/ht_meter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'HT Meter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HtMeter(),
    );
  }
}
