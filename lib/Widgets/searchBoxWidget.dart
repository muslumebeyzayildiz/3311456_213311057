import 'package:flutter/material.dart';

Widget searchBox() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),///texfield arama için  search imleci için yatayda boşluk olsun
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(///metin özelliği getirdim
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),///imleç en baştan başlıyor
        prefixIcon: Icon(// metin alanının düzenlenebilir kısmından önce görünen bir simge
          Icons.search,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(//kutu kısaltmaları
          maxHeight: 20,
          minWidth: 25,
        ),
        border: InputBorder.none,///texfield ın altındak içizgiden kurtulduk
        hintText: 'Arama yap',//tıklayınca gidecek metin
        hintStyle: TextStyle(color: Colors.purple[200]),
      ),
    ),
  );
}