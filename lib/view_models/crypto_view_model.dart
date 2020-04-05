import 'package:flutter/material.dart';
import 'package:me_crypto/model/crypto_model.dart';
import 'package:me_crypto/services/api_calls.dart';

class CryptoList extends ChangeNotifier{
  List<CryptoViewModel> cryptos = List<CryptoViewModel>();
  Future<void> fetchCrypto() async{
    final res = await CryptoCalls().getCryptos();
    this.cryptos = res.map((f) => CryptoViewModel(crypto: f)).toList();
    print (this.cryptos);
    notifyListeners();
  }
}

class CryptoViewModel{
  final Crypto crypto;
  CryptoViewModel({this.crypto});


  String get id{
    return this.crypto.id;
  }

  String get currency{
    return this.crypto.currency;
  }

  String get symbol{
    return this.crypto.symbol;
  }

  String get name{
    return this.crypto.name;
  }

  String get logourl{
    return this.crypto.logoUrl;
  }

  String get rank{
    return this.crypto.rank;
  }

  String get price{
    return this.crypto.price;
  }

  DateTime get pricedate{
    return this.crypto.priceDate;
  }

  String get marketcap{
    return this.crypto.marketCap;
  }

  String get maxsupply{
    return this.crypto.maxSupply;
  }

  String get circulatingSupply{
    return this.crypto.circulatingSupply;
  }

  String get high{
    return this.crypto.high;
  }

  DateTime get hightimeStamp{
    return this.crypto.highTimestamp;
  }

  The1D get the1D{
    return this.crypto.the1D;
  }
  The1D get the30D{
    return this.crypto.the30D;
  }  
}