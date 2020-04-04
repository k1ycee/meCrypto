import 'package:flutter/material.dart';
import 'package:me_crypto/Ui/crypto_pass.dart';
import 'package:me_crypto/Ui/crypto_ui.dart';
import 'package:me_crypto/view_models/crypto_view_model.dart';
// import 'package:me_crypto/model/crypto_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => CryptoList(),
        child: CryptoPass(),
      ),
    );
  }
}
