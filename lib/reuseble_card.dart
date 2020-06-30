import 'package:flutter/material.dart';

class Reusable_Card extends StatelessWidget {
  Reusable_Card({@required this.renk, this.CardChild, this.cnsytTiklama});
  final Color renk;
  final Widget CardChild;
  final Function cnsytTiklama;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cnsytTiklama,
      child: Container(
        child: CardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: renk,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
