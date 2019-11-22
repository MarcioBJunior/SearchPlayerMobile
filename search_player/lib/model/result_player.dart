

import 'dart:convert';

class  ResultPlayer {


// Informações Pessoais
String nome;
String dataNascimeto;
String peso;
String altura;
String nacionalidade;
String localNascimento;

//Informações Profissionais
String time;
String numero;
String salario;
String chuteira;
String posicao;

//Redes sociais
String twitter;
String instagram;
String facebook;

ResultPlayer({

  this.nome,
  this.dataNascimeto,
  this.peso,
  this.altura,
  this.nacionalidade,
  this.localNascimento,
  this.time,
  this.numero,
  this.salario,
  this.chuteira,
  this.posicao,
  this.twitter,
  this.instagram,
  this.facebook,
});




factory ResultPlayer.fromJson(String str) => ResultPlayer.fromMap(json.decode(str));

String toJson() => json.encode(toMap());


factory ResultPlayer.fromMap(Map < String, dynamic > json) => ResultPlayer(

  nome: json["player"][0]["strPlayer"],
  dataNascimeto:  json["player"][0]["dateBorn"],
  peso:  json["player"][0]["strWeight"],
  altura:  json["player"][0]["strHeight"],
  nacionalidade:  json["player"][0]["strNationality"],
  localNascimento:  json["player"][0]["strBirthLocation"],
  time:  json["player"][0]["strTeam"],
  numero:  json["player"][0]["strNumber"],
  salario: json["player"][0]["strWage"],
  chuteira:  json["player"][0]["strKit"],
  posicao:  json["player"][0]["strPosition"],
  twitter:  json["player"][0]["strTwitter"],
  instagram: json["player"][0]["strInstagram"],
  facebook: json["player"][0]["strFacebook"],
);

Map<String, dynamic > toMap() => {
  "Nome": nome ,
  "Data de Nasimento": dataNascimeto,
  "Peso": peso,
  "Altura": altura,
  "Nacionalidade": nacionalidade,
  "Local de Nascimento": localNascimento,
  "Time": time,
  "Número": numero,
  "Salário": salario,
  "Chuteira": chuteira,
  "Posicao": posicao,
  "Twitter": twitter,
  "Instagram": instagram,
  "Facebook": facebook,

};


}

