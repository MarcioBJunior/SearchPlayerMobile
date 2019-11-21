
import 'package:flutter/material.dart';

class Layout{

  static Scaffold render(Widget content, title){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }

  static Color primary([double opacity = 1]) => Colors.black.withOpacity(opacity);
  static Color secondary([double opacity = 1]) => Colors.green.withOpacity(opacity);
  static Color ligth([double opacity = 1]) => Colors.white.withOpacity(opacity);

}
