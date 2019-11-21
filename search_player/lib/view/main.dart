import 'package:flutter/material.dart';
import 'package:search_player/view/home_page.dart';

import 'layout.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.black),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
    ),
  ));
}