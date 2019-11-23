import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:search_player/view/home_page.dart';
import 'package:splashscreen/splashscreen.dart';


class SplashPage extends StatefulWidget {
  SplashPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return _introScreen();
  }
}

Widget _introScreen() {
  return Stack(

    children: <Widget>[

      SplashScreen(

        seconds: 5,
        gradientBackground: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.black, Colors.black],
        ),
        navigateAfterSeconds: HomePage() ,
        loaderColor: Colors.green,
        styleTextUnderTheLoader: TextStyle(color: Colors.white),
        loadingText:  Text("Chamando os Atletas",
          style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Raleway' ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/img/logo_search.png"),
            fit: BoxFit.scaleDown ,
          ),
        ),
      ),
    ],
  );
}