import 'package:flutter/material.dart';
import 'package:gorev_uygulamasi/repository/mesajlar_repository.dart';

class mesajSayfasi extends StatefulWidget {

  final MesajlarRepository mesajlarRepository;
  const mesajSayfasi(this.mesajlarRepository, {Key? key}) : super(key: key);

  @override
  State<mesajSayfasi> createState() => _mesajSayfasiState();
}

class _mesajSayfasiState extends State<mesajSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF285430),
        title: Text('Mesajlarım'),
      ),
      body: Column(//listview tüm ekranı kapladığı için
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true, ///açınca en aşagıda olduk
              itemCount: widget.mesajlarRepository.mesajlar.length,///mesajların uzunluğu kadar index oluyor
              itemBuilder: (context, index){
                //aşağıda widgetini oluşturduk
                return MesajGorunumu(//mesajlar ters olmasın yazdığım sırayla olsun diye
                    widget.mesajlarRepository.mesajlar[widget.mesajlarRepository.mesajlar.length - index-1 ]);

              },
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(),///çizgi oldu
            ),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                          ),
                        ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0 ),
                            child: TextField(
                            decoration: InputDecoration( /// yazı yazıp göndere tıkladığımız yerin altındaki çizgiden kurtulmak için textin kendi özelliği
                              border: InputBorder.none,
                            ) ,
                            ),
                          ),),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right : 10.0),
                  child: ElevatedButton(
                      onPressed:() {///CTRL+SPACE (){} BUNLAR GELSİN DİYE
                      print('Gönder');
                      },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[100]
                    ),
                      child: Text('Gönder'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MesajGorunumu extends StatelessWidget {
  final Mesaj mesaj;
  const MesajGorunumu(this.mesaj, {
   Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: mesaj.gonderen == 'Ali' ? Alignment.centerRight : Alignment.centerLeft , //bensem sağda olsun
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical:16.0 ),
        child: DecoratedBox(//yuvarlak bir tip olsun diye
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black54, width: 2),
            color: Colors.blue[200],//()0xFFE6CBA8
            borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Padding(

            padding: const EdgeInsets.all(24.0),
            child: Text(mesaj.yazi),
          ) ,
        ),
      ),

    );
  }
}