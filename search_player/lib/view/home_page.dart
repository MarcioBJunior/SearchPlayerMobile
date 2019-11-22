import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_player/services/search_player_service.dart';


class HomePage extends StatefulWidget{

    @override
    _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  var _searchPlayerController = TextEditingController();
  bool _loading = false;
  bool _enableField = true;
  String _result,_result1,_result2,_result3,_result4,_result5,_result6,_result7,_result8,_result9,_result10,_result11,_result12,_result13,_result14;
  String _validate;
  @override
  void dispose() {
    super.dispose();
    _searchPlayerController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchPlayer'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildDescription(),
            Padding(
                padding: const EdgeInsets.only(top: 35)
            ),
            _buildTitleInput(),
            _buildSearchPlayerTextField(),
            _buildSearchPlayerButton(),
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

          ],
        ),
      ),
      backgroundColor: Colors.green,
    );
  }
  Widget _buildDescription() {
    return Text('O SearchPlayer é uma plataforma onde os fãs de futebol, jornalistas e curiosos podem consultar e extrair rapidamente informações de jogadores do esporte, em todo o mundo. Além de disponibilizar informações dos players, a plataforma disponibiliza vídeos do youtube referente ao atleta consultado diretamente na plataforma.',
      style: TextStyle(color: Colors.white, fontSize: 16, ),
      textAlign: TextAlign.justify,

    );
  }
  Widget _buildTitleInput() {
 return Text('INFORME O NOME DO JOGADOR:',
   style: TextStyle(color: Colors.white, fontSize: 17),
   textAlign: TextAlign.center,
 );
  }

  Widget _buildSearchPlayerTextField() {

    return TextField(
      autofocus: true,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      style: TextStyle(color: Colors.white),
      controller: _searchPlayerController,
      enabled: _enableField,

    );
  }

  Widget _buildSearchPlayerButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.black,
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
      child: CircularProgressIndicator(),
    );
  }

  Future _searchPlayer() async {
    _searching(true);

    final player = _searchPlayerController.text;

    final resultPlayer = await SearchPlayerService.fetchPlayer(player: player);
    print(resultPlayer.nome); // Exibindo somente a nome no terminal

    setState(() {
      // TODOS ATRIBUTOS EM STRING
      _validate = resultPlayer.toJson();
      
        //NOME
        if(resultPlayer.nome == null || resultPlayer.nome == ""){
          _result = "Nome: "+" Informação Indisponível!";
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
  }

  Widget _buildResult() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(
            _result ?? ''
            , style: TextStyle(color: Colors.white, fontSize: 18)),
      );
    }
  Widget _buildResult1() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result1 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  Widget _buildResult2() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result2 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  Widget _buildResult3() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result3 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  Widget _buildResult4() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result4 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  Widget _buildResult5() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result5 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  Widget _buildResult6() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result6 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  Widget _buildResult7() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result7 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  Widget _buildResult8() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result8 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  Widget _buildResult9() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result9 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  Widget _buildResult10() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result10 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  Widget _buildResult11() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result11 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }

  Widget _buildResult12() {

    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result12 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  Widget _buildResult13() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          _result13 ?? ''
          , style: TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
  }


