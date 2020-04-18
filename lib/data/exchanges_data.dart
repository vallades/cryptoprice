import 'dart:convert';
import 'package:http/http.dart' as http;

class Exchanges {
  static Future<bool> GetExchangeTickers() async {
    var url = 'https://api.bitvalor.com/v1/ticker.json';
    
    Map<String, String> headers = {
      "Content-Type": "application/json"
    };

    var response = await http.get(url);
    if (response.statusCode == 200) {
      Map mapResponse = json.decode(response.body);      
      print('Volume: ${mapResponse["ticker_24h"]["exchanges"]["BTD"]["vol"]}');
      print('Último valor negociado: R\$ ${mapResponse["ticker_24h"]["exchanges"]["BTD"]["last"]}');
    } else {
      print('Request failed with status code: ${response.statusCode}.');
    }   

    return true;
  }
}