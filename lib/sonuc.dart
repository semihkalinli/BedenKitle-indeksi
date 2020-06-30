import 'package:bki_flutter/reuseble_card.dart';
import 'package:bki_flutter/sabitler.dart';
import 'package:flutter/material.dart';

class SonucSayfasi extends StatelessWidget {
  SonucSayfasi(
      {@required this.bkiSinif,
      @required this.bkiAciklama,
      @required this.bkiDeger});
  final String bkiSinif;
  final String bkiDeger;
  final String bkiAciklama;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BKİ"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                "Sonuc",
                style: kSonucBaslik,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable_Card(
              renk: kAktifKartRenk,
              CardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bkiDeger,
                    style: kSonuc,
                  ),
                  Text(
                    bkiSinif,
                    style: kBKIDeger,
                  ),
                  Text(
                    bkiAciklama,
                    style: kBKIAciklama,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  "TEKRAR HESAPLA",
                  style: kBuyukButon,
                ),
              ),
              color: kAltContainerRenk,
              height: kAltButonYukseklik,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
            ),
          )
        ],
      ),
    );
  }
}
