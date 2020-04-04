import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:me_crypto/model/crypto_model.dart';
import 'package:me_crypto/model/exchange_rates_model.dart';
import 'package:me_crypto/model/markets_model.dart';


class CryptoCalls{

  String apiKey = 'd5d20b63aaeea319fd9084726ad6a08c';

  Future<List<Exchange>> getRates()async{
    final fetch = await http.get('https://api.nomics.com/v1/exchange-rates?key=$apiKey');
    if(fetch.statusCode == 200){
      return Exchange.fromJson(jsonDecode(fetch.body)) as List;
    }
    return null;
  }

  Future<List<Crypto>> getCryptos()async{
    final ask =  await http.get('https://api.nomics.com/v1/currencies/ticker?key=$apiKey');
    if(ask.statusCode == 200){
      return Crypto.fromJson(jsonDecode(ask.body)) as List;
    }
    return null;
  }
  
  Future<List<Markets>> getMarkets() async{
    final res = await http.get('https://api.nomics.com/v1/markets?key=$apiKey');
    if(res.statusCode == 200){
      return Markets.fromJson(jsonDecode(res.body)) as List;
    }
    return null;
  }
}