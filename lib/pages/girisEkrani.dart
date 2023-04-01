import 'package:flutter/material.dart';
import '../main.dart';

class girisEkrani extends StatefulWidget {
  const girisEkrani({Key? key}) : super(key: key);

  @override
  State<girisEkrani> createState() => _girisEkraniState();
}

class _girisEkraniState extends State<girisEkrani> {
  String kullaniciAdi = "";
  String sifre = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //soldan sağdan boşluk bıraksın diye
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    kullaniciAdi=value;
                  });
                },
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      //İÇİNE TIKLAYINCA KENARLARIN ÇİZGİLİ OLMASI
                      borderSide: BorderSide(color: Colors.orange.shade700),
                    ),
                    icon: Icon(Icons.person),
                    hintText: 'kullanıcı adı',
                    //yazmaya başlayınca gidiyor
                    labelText: 'kullanıcı adı*',
                    // yazsam bile bilgi amaçlı duruyor
                    labelStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder() //dış renk tıklayınca değişmesi
                ),

              ),

              //const SizedBox(width: 200.0, height: 300.0),
              // boşluk bırakmak için

              TextFormField(
                onChanged: (value) {
                  setState(() {
                    sifre=value;
                  });
                },
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange.shade700),
                    ),
                    icon: Icon(Icons.person),
                    labelText: 'şifre*',
                    labelStyle: TextStyle(color: Colors.purple),
                    border: OutlineInputBorder()),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //köşelere gidiyor
                children: <Widget>[
                  MaterialButton(
                    child: Text('sifremi unuttum'),
                    onPressed: () {},
                  ),
                  //metin gibi am üstüne tıklanabiliyor
                  MaterialButton(
                    child: Text('üye ol'),
                    onPressed: () {},
                  ),
                ],


              ),
              _girisyapButonu(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _girisyapButonu() =>
      ElevatedButton(
          child: Text("Giriş Yap"),
          onPressed: () {
            if (kullaniciAdi == "beyza" && sifre == "123456") {
              Navigator.push(
               context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'MYBee',)),
              );
            } else {
              showDialog(
                  barrierDismissible: false,
                  // çıkan metin kutusu ekranında bir yere basıp kapatamamak
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("HATA!"),
                      content: Text("Giriş bilgileriniz hatalı"),
                      actions: <Widget>[
                        MaterialButton(
                            child: Text("Geri dön"),
                            onPressed: () => Navigator.pop(context))
                        //navigator pop bir önceki ekrana dönme
                      ],
                    );
                  });
            }
          },

      );
}
