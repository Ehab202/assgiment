// ignore_for_file: prefer_const_constructors


import 'package:assinment1/massenger_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Messenger_Screen(),
      routes: {
      "home_screen":(context) => MyHomePage(),
      "MS":(_)=>Messenger_Screen()
      },
    );
  }

  
}



