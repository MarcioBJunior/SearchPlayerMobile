import 'package:flutter/material.dart';

import 'layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String title = "SearchPlayer";

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primaryColor: Layout.primary(),
        accentColor: Layout.secondary(),
        scaffoldBackgroundColor: Layout.secondary(),

      ),
      home: MyHomePage(title: title),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    Widget content = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Equipe SearchPlayer informa:',
            style: TextStyle(color: Layout.ligth(1)),
          ),
          Text(
            'Estamos Preparando Uma Surpresa pra Você!',
            style:TextStyle(color: Layout.ligth(1))
          ),
        ],
      ),
    );

    return Layout.render(content, widget.title);

  }
}
