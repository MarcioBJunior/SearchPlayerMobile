import 'package:flutter/material.dart';
import 'package:search_player/view/splash_screen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
    theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.black),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
      fontFamily: 'Josefin Sans',
    ),
  ));
}