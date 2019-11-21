import 'package:http/http.dart' as http;
import 'package:search_player/model/result_player.dart';

class SearchPlayerService{

  static Future<ResultPlayer> fetchPlayer({String player}) async{
    final response = await http.get('https://www.thesportsdb.com/api/v1/json/1/searchplayers.php?p=' + player);
    if(response.statusCode == 200){
        return ResultPlayer.fromJson(response.body);
    }else{
        throw Exception('Requisição inválida!');
    }
  }
}