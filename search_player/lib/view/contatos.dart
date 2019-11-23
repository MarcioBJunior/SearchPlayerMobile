import 'package:flutter/material.dart';

class ContatosPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
        titleSpacing: 70,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('lib/img/background2.jpg')), ),

          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(top: 100)
                  ),
                  Text("Desenvolvedor: \n\n  Márcio Júnior \n \n \n \n \n Instagram: \n\n @nick_junin \n @searchPlayer",
                    style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: 'Verdana'),textAlign: TextAlign.center,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 200)
                  ),
                  RaisedButton(
                    child: Text("VOLTAR", style: TextStyle(color: Colors.white),),
                    color: Color(0xff008000),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ) ,
    );
  }

}