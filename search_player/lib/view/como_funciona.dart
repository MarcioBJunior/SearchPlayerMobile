import 'package:flutter/material.dart';

class ComoFuncionaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Como Funciona?"),
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
                  Text("	O SearchPlayer foi idealizado para entretenimento e também para uso profissional, sendo fundamental para facilitar o trabalho nos setores do jornalismo esportivo, visando auxiliar a preparação de reportagens, transmissões ou qualquer meio comunicativo que precise de informações sobre jogadores de futebol. Além de ser super rápido mostrar aquelas informações ou vídeo de última hora na resenha entre amigos.\n\n Nosso Sistema recupera os dados a partir de uma API disponibilizada por:  www.thesportsdb.com . \n\n Para utilizar o sistema basta acessar nosso site: searchplayer.github.io, ou baixar na PlayStore, ir até o campo de busca e informar o nome do jogador que deseja obter informações, clicando em buscar abrirá uma página onde aparecerá as informações do atleta, além de sua foto futuramente também mostrará vídeos disponíveis no youtube",
                    style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: 'Verdana'),textAlign: TextAlign.justify,
                  ),
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

}