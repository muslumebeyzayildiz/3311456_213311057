//import 'package:gorev_uygulamasi/Widgets/profilResmiWidget.dart'; insaetme widgetinin içinde bunları çağırdığım için burada eksta gerek yok
//mport 'package:gorev_uygulamasi/Widgets/kapakResmiWidget.dart';
import 'package:gorev_uygulamasi/Widgets/insaEtmeWidget.dart';
import 'package:gorev_uygulamasi/Widgets/profilIcerigiWidget.dart';
import 'package:flutter/material.dart';

class profilSayfasi extends StatefulWidget {
  const profilSayfasi({Key? key}) : super(key: key);

  @override
  State<profilSayfasi> createState() => _profilSayfasiState();
}

class _profilSayfasiState extends State<profilSayfasi> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
      ),
      body: ListView(
         padding: EdgeInsets.zero,
         children:<Widget>[
           insaEtme(),
           profilIcerigi(),
         ],
         ),
    );
     }

}
