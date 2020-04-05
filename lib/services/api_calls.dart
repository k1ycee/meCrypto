// import 'dart:ffi';
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
      final Iterable nfu = jsonDecode(fetch.body);
      return nfu.map((e) => Exchange.fromJson(e)).toList();
    }
    return null;
  }

  Future<List<Crypto>> getCryptos()async{
    final ask =  await http.get('https://api.nomics.com/v1/currencies/ticker?key=$apiKey&interval=1d,30d&convert=USD');
    if(ask.statusCode == 200){
      final Iterable pls = jsonDecode(ask.body);
      return pls.map((c) => Crypto.fromJson(c)).toList();
    }
    return null;
  }
  
  Future<List<Markets>> getMarkets() async{
    final res = await http.get('https://api.nomics.com/v1/markets?key=$apiKey');
    if(res.statusCode == 200){
      return (res.body as List).map((m) => Markets.fromJson(m)).toList();
    }
    return null;
  }
}