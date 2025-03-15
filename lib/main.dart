import 'package:flutter/material.dart';
import 'package:portfoloio_1/View/Screens/HomePage.dart';
import 'package:portfoloio_1/View/Screens/AboutMe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
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
