import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_player/services/search_player_service.dart';
import 'package:search_player/view/como_funciona.dart';
import 'package:search_player/view/result_page.dart';

import 'contatos.dart';

class HomePage extends StatefulWidget{
   @override
    _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _searchPlayerController = TextEditingController();
  bool _loading = false;
  bool _enableField = true;
  String _result,_result1,_result2,_result3,_result4,_result5,_result6,_result7,_result8,_result9,_result10,_result11,_result12,_result13,_result14;

  @override
  void dispose() {
    super.dispose();
    _searchPlayerController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        titleSpacing: 70,
        title: Text('SearchPlayer', style: TextStyle( fontFamily: 'Abel', fontSize: 30),),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('SearchPlayer', style: TextStyle(color: Colors.white, fontFamily: 'Abel', fontSize: 25), textAlign: TextAlign.center,),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 100)
              ),
              ListTile(
                title: Text('Como Funciona?',style: TextStyle(color: Colors.white, fontFamily: 'Abel',fontSize: 20), textAlign: TextAlign.center,),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ComoFuncionaPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Contatos',style: TextStyle(color: Colors.white, fontFamily: 'Abel',fontSize: 20), textAlign: TextAlign.center,),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContatosPage()),
                  );
                },
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 220)
              ),
              ListTile(
                title: Text('Desenvolvido por:',
                  style: TextStyle(color: Colors.white, fontFamily: 'Abel',fontSize: 18)
                  , textAlign: TextAlign.center,),
              ),
              ListTile(
                title: Text('Márcio Brandão Júnior',
                  style: TextStyle(color: Colors.white, fontFamily: 'Abel',fontSize: 16)
                  , textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('lib/img/background1.jpg')), ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  _buildTitleInput(),
                  Padding(
                      padding: const EdgeInsets.only(top: 50)
                  ),
                  _buildSearchPlayerTextField(),
                  _buildSearchPlayerButton(),
                  Padding(
                      padding: const EdgeInsets.only(top: 100)
                  ),
                  _buildDescription(),
                ],
              ),
            ),
          ),
        ],
      ) ,
    );
  }
  Widget _buildDescription() {
    return Text('       O SearchPlayer é uma plataforma onde os fãs de futebol,'
        ' jornalistas e curiosos podem consultar e extrair rapidamente informações '
        'de jogadores do esporte, em todo o mundo. Além de disponibilizar informações'
        ' dos players, a plataforma disponibiliza vídeos do youtube referente ao atleta'
        ' consultado diretamente na plataforma.',
      style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Abel'),
      textAlign: TextAlign.justify,

    );
  }
    Widget _buildTitleInput() {
 return Text('INFORME O NOME DO JOGADOR:',
   style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Abel'),
   textAlign: TextAlign.center,
 );
  }

  Widget _buildSearchPlayerTextField() {

    FocusNode myFocusNode = new FocusNode();

    return new TextField(
      focusNode: myFocusNode,
      cursorColor:Colors.white,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      style: TextStyle(color: Colors.white),
      controller: _searchPlayerController,
      enabled: _enableField,

      decoration: new InputDecoration(
        hintStyle: TextStyle(color: Colors.white),
        hintText: "Ex: Neymar",

          enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(
                  color: Colors.white, width: 0.3),
          ),
          border:  OutlineInputBorder(),
      ),
    );
  }

  Widget _buildSearchPlayerButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        textColor: Colors.white,
        color: Color(0xff008000),
        onPressed: _searchPlayer,
        child: _loading ? _circularLoading() : Text('Buscar'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  void _searching(bool enable) {
    setState(() {
      _result = enable ? '' : _result;
      _loading = enable;
      _enableField = !enable;
    });
  }

  Widget _circularLoading() {
    return Container(
      height: 15.0,
      width: 15.0,
      child: CircularProgressIndicator(
      ),

    );
  }

  Future _searchPlayer() async {

    _searching(true);

    final player = _searchPlayerController.text;

    final resultPlayer = await SearchPlayerService.fetchPlayer(player: player);
    print(resultPlayer.nome); // Exibindo somente a nome no terminal

    setState(() {

        //NOME
        if(resultPlayer.nome == null || resultPlayer.nome == ""){
          _result = "Nome: "+" Informação Indisponível!";
        }else if (resultPlayer.nome == "     JOGADOR NÃO EXISTE!"){
          _result = resultPlayer.nome;
        }else{
          _result = "Nome: "+ resultPlayer.nome;
        }
        //DATA DE NASCIMENTO
        if(resultPlayer.dataNascimeto == null || resultPlayer.dataNascimeto == ""){
          _result1 = "Data de Nascimento: "+" Informação Indisponível!";
        }else{
          _result1 = "Data de Nascimento: "+resultPlayer.dataNascimeto;
        }
        //PESO
        if(resultPlayer.peso == null || resultPlayer.peso == "" ){
          _result2 = "Peso: "+" Informação Indisponível!";
        }else{
          _result2 = "Peso: "+resultPlayer.peso;
        }
        //ALTURA
        if(resultPlayer.altura == null || resultPlayer.altura == ""){
          _result3 = "Altura: "+" Informação Indisponível!";
        }else{
          _result3 = "Altura: "+resultPlayer.altura;
        }
        //NACIONALIDADE
        if(resultPlayer.nacionalidade == null || resultPlayer.nacionalidade == ""){
          _result4 = "Nacionalidade: "+" Informação Indisponível!";
        }else{
          _result4 = "Nacionalidade: "+resultPlayer.nacionalidade;
        }
        //LOCAL DE NASCIMENTO
        if(resultPlayer.localNascimento == null || resultPlayer.localNascimento == ""){
          _result5 = "Local de Nascimento: "+" Informação Indisponível!";
        }else{
          _result5 = "Local de Nascimento: "+resultPlayer.localNascimento;
        }
        //TIME
        if(resultPlayer.time == null || resultPlayer.time == ""){
          _result6 = "Time: "+" Informação Indisponível!";
        }else{
          _result6 = "Time: "+resultPlayer.time;
        }
        //NÚMERO
        if(resultPlayer.numero == null || resultPlayer.numero == ""){
          _result7 = "Número: "+" Informação Indisponível!";
        }else{
          _result7 = "Número: "+resultPlayer.numero;
        }
        //SALÁRIO
        if(resultPlayer.salario == null || resultPlayer.salario == ""){
          _result8 = "Salário: "+" Informação Indisponível!";
        }else{
          _result8 = "Salário: "+resultPlayer.salario;
        }
        //CHUTEIRA
        if(resultPlayer.chuteira == null || resultPlayer.chuteira == ""){
          _result9 = "Chuteira: "+" Informação Indisponível!";
        }else{
          _result9 = "Chuteira: "+resultPlayer.chuteira;
        }
        //POSIÇÃO
        if(resultPlayer.posicao == null || resultPlayer.posicao == ""){
          _result10 = "Posição: "+" Informação Indisponível!";
        }else{
          _result10 = "Posição: "+resultPlayer.posicao;
        }
        //TWITTER
        if(resultPlayer.twitter == null || resultPlayer.twitter == ""){
          _result11 = "Twitter: "+" Informação Indiponível!";
        }else{
          _result11 = "Twitter: "+resultPlayer.twitter;
        }
        //INSTAGRAM
        if(resultPlayer.instagram == null || resultPlayer.instagram == ""){
          _result12 = "Instagram: "+" Informação Indisponível!";
        }else{
          _result12 = "Instagram: "+resultPlayer.instagram;
        }
        //FACEBOOK
        if(resultPlayer.facebook == null || resultPlayer.facebook == ""){
          _result13 = "Facebook: "+" Informação Indisponível!";
        }else{
          _result13 = "Facebook: "+resultPlayer.facebook;
        }
    });

      _searching(false);

      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultPage()),
    );
      ResultPage.nome = _result;
      ResultPage.dataNasc = _result1;
      ResultPage.peso = _result2;
      ResultPage.altura = _result3;
      ResultPage.nascionalidade = _result4;
      ResultPage.localNasc = _result5;
      ResultPage.time = _result6;
      ResultPage.numero = _result7;
      ResultPage.salario = _result8;
      ResultPage.chuteira = _result9;
      ResultPage.posicao = _result10;
      ResultPage.twitter = _result11;
      ResultPage.insta = _result12;
      ResultPage.face = _result13;
  }
  }


