import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
    static String nome, dataNasc, peso, altura, nascionalidade,
        localNasc, time, numero, salario, chuteira, posicao, twitter, insta, face;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(nome.substring(5)),
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
      Text("RESULTADO DE SUA BUSCA: "+ nome.substring(5),
        style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: 'Verdana'),
        textAlign: TextAlign.center,
      ),
      Padding(
          padding: const EdgeInsets.only(bottom: 15)
      ),
      _buildResult(),
      _buildResult1(),
      _buildResult2(),
      _buildResult3(),
      _buildResult4(),
      _buildResult5(),
      _buildResult6(),
      _buildResult7(),
      _buildResult8(),
      _buildResult9(),
      _buildResult10(),
      _buildResult11(),
      _buildResult12(),
      _buildResult13(),
      Padding(
          padding: const EdgeInsets.only(bottom: 35)
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

    Widget _buildResult() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            nome ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult1() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            dataNasc ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult2() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            peso ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult3() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            altura ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult4() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            nascionalidade ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult5() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            localNasc ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult6() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            time ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult7() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            numero ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult8() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            salario ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult9() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            chuteira ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult10() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            posicao ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult11() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            twitter ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }

    Widget _buildResult12() {

      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            insta ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
    Widget _buildResult13() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            face ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
}