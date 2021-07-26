import 'package:flutter/material.dart';
import 'package:flutter_aprenda_ingles/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AprendaIngles(),
      theme: ThemeData(
        primaryColor: Color(0xff795548),
        //accentColor: Colors.green,
        scaffoldBackgroundColor: Color(0xfff5e9b9),
      ),
    ),
  );
}
