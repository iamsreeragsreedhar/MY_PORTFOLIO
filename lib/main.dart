import 'package:flutter/material.dart';
import 'package:portfoloio_1/Pages/HomePage.dart';
import 'package:portfoloio_1/Portfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
      ),
      debugShowCheckedModeBanner: false,
      title: 'Sreerag PS ',
      home: Homepage(),
    );
  }
}
