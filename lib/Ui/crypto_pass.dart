

import 'package:flutter/material.dart';
import 'package:me_crypto/Ui/crypto_ui.dart';
import 'package:me_crypto/view_models/crypto_view_model.dart';
import 'package:provider/provider.dart';

class CryptoPass extends StatefulWidget {
  @override
  _CryptoPassState createState() => _CryptoPassState();
}

class _CryptoPassState extends State<CryptoPass> {

  @override
  void initState() {
    Provider.of<CryptoList>(context, listen: false).fetchCrypto();
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    final crypt = Provider.of<CryptoList>(context);
    return Scaffold(body:  Container(child:CryptoUI(crypted: crypt.cryptos)));
  }
}