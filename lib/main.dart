import 'package:flutter/material.dart';
import 'package:gorev_uygulamasi/pages/basariSayfasi.dart';//import 'pages/basariSayfasi.dart';böylede kullanılabilir
import 'package:gorev_uygulamasi/repository/mesajlar_repository.dart';
import 'package:gorev_uygulamasi/Widgets/takvimWidget.dart';
import 'package:gorev_uygulamasi/Widgets/yapiKartiWidget.dart';
import 'package:intl/date_symbol_data_local.dart';//dil için
import 'pages/ayarSayfasi.dart';
import 'pages/girisEkrani.dart';
import 'pages/mesajSayfasi.dart';
import 'pages/yapilacaklarSayfasi.dart';
import 'pages/profilSayfasi.dart';


void main() {
  runApp(const MyApp());
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  hexColor(String colorhexcode) {
    // renk kodunu  kullanmakk için
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//debug yazısı kalktı
      title: 'görev uygulaması',
      theme: ThemeData(
          scaffoldBackgroundColor: Color(
        hexColor('#FFFFDE'),
      )
          ),

      home: const girisEkrani(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
MesajlarRepository mesajlarRepository = MesajlarRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,//klavyenin üst üste binmesini önlemek için gövde yeniden boyutlandırılabilir
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Flexible(flex: 3,child: takvimWidgeti(),), //SingleChildScrollView

          Flexible(//ekranda oran olarak gibi
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 50.0,
                    height: 150.0,
                  ),

                  yapiKarti('su hatırlatıcısı',"suu.png"),
                  const SizedBox(width: 12),
                  yapiKarti('spor yap',"sport.jpg"),
                  const SizedBox(width: 12),
                  yapiKarti('ilaç hatırlatma',"vitamin.png"),
                  const SizedBox(width: 12),
                  yapiKarti('kitap oku',"kitap.jpg"),
                  const SizedBox(width: 12),
                  yapiKarti('e-posta kontrol et',"eposta.jpg"),
                  const SizedBox(width: 12),
                  yapiKarti('ders çalış',"kalem.jpg"),
                  const SizedBox(width: 12),
                ],
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // kaydırmaya yarıyor
          //padding boşluk verir
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Stack(//children kullanmak için
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2021/02/22/16/34/portrait-6040876_960_720.jpg'),
                      radius: 50.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Müslüme Beyza Yıldız',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .3),
                    child: Text(
                      'MYBee@gmail.com',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .8),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child:Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text('Hesap Değiştir', style: TextStyle(color: Colors.white),),
                      ) ,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Anasayfa'),
              onTap: () {
                Navigator.pop(context); // kullanarak ilk rotaya dönün.
              },
            ),
            ListTile(
              leading: const Icon(Icons.comment_rounded),
              title: const Text('Mesajlar'),
              onTap: () {
                Navigator.push(
                  //gitmek için
                  context,
                  MaterialPageRoute(builder: (context) =>  mesajSayfasi(mesajlarRepository)),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.article_rounded),
              title: const Text('Notlarım'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => yapilacaklarSayfasi()),
                );
                //Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.align_vertical_bottom_rounded),
              title: const Text('Başarılar'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  basariSayfasi()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profilim'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  profilSayfasi()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.brightness_high_rounded),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => const ayarSayfasi()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
