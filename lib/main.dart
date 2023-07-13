// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'Screens/categorise.dart';
import 'Screens/login.dart';
import 'Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
