import 'package:flutter/material.dart';
import 'sabitler.dart';

class IconIcerik extends StatelessWidget {
  IconIcerik({@required this.ikon, this.Cinsiyet});

  final IconData ikon;
  final String Cinsiyet;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ikon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          Cinsiyet,
          style: kEtiketStili,
        ),
      ],
    );
  }
}
