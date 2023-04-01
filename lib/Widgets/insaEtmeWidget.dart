import 'package:flutter/material.dart';
import 'profilResmiWidget.dart';
import 'kapakResmiWidget.dart';

Widget insaEtme() {
  final  coverHeight =280;
  final profileHeight =144;//resmimizin yüksekliği
  final bottom= profileHeight / 2;
  final top = coverHeight -profileHeight / 2;
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
          margin: EdgeInsets.only(bottom: bottom),
        child: kapakResmi()),
      Positioned(//Bir stack alt öğesinin nerede konumlandığını kontrol eden
        top: top,
        child: profilResmi(),
      ),
    ],
  );

}


