import 'package:flutter/material.dart';
import 'package:me_crypto/view_models/crypto_view_model.dart';


class CryptoUI extends StatelessWidget {

  final List<CryptoViewModel> crypted;

  CryptoUI({this.crypted});
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.crypted.length,
      itemBuilder: (context,index){
        final crypt = this.crypted[index];
        return ListTile(
          leading:  Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(crypt.logourl)
              ),
              borderRadius: BorderRadius.circular(6)
            ),
            width: 50, 
            height: 100,
            ),
            title: Text(crypt.name),
            subtitle: Text(crypt.price),
            trailing: Text(crypt.marketcap),
        );
      });
  }
}