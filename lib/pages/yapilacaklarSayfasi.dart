//fonksiyonsuz ui tasarım
import 'package:flutter/material.dart';
import 'package:gorev_uygulamasi/Widgets/todoWidget.dart';
import 'package:gorev_uygulamasi/repository/todo_repository.dart';//9.satır için import ettim
import '../Widgets/searchBoxWidget.dart';

class yapilacaklarSayfasi extends StatefulWidget {
   yapilacaklarSayfasi({Key? key}) : super(key: key);

  @override
  State<yapilacaklarSayfasi> createState() => _yapilacaklarSayfasiState();
}

class _yapilacaklarSayfasiState extends State<yapilacaklarSayfasi> {
  final todoList = ToDo.todoList();///Todorepository deki to do liste benim todoList adındaki DEĞİŞKENİM OLACAK

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF285430),
        title: Text('Notlarım'),
      ),
      body: Stack( ///stack birkaç çocuğu (children kullanabilmek için )basit bir şekilde üst üste bindirmek
        children: [
          Container(
            padding: const EdgeInsets.symmetric(///texfield kutusunun boşluk
              horizontal: 20,
              vertical: 5,
            ),
            child: Column(
              children: [
                searchBox(),
                Expanded(//column içinde alt ögeyi genişleterek kullanılabilir alanı doldur
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 50, //üst kenar boşluğu
                          bottom: 20, //alt 20
                        ),
                        child: const Text(
                          'Tüm Notlarım',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500, //kalınlığı gibi
                          ),
                        ),
                      ),
                     for (ToDo todoo in todoList)///for in belirlediğimiz listenin uzunluğunda işlem yapmasıdır fordan farkı
                      ToDoItem(todo: todoo),//todooo değişkeninin her bir todoList indeksini kullanmasını
                    ],
                  ),
                )
              ],
            ),
          ),

          Align( ///Çocuğunu kendi içinde HİZALAYAN ve isteğe bağlı olarak çocuğun boyutuna göre kendisini boyutlandıran bir widget.
            alignment: Alignment.bottomCenter,
            child: Row(
                children: [
              Expanded(
                child: Container( //bir kutu oluşturuyorum texfield i içine veriyorum
                  margin: const EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20,
                  ),
                  padding: const EdgeInsets
                      .symmetric( //aşagıdaki çubuk boyutlandırma
                    horizontal: 20,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow( ///gölge için
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 10.0, //bulanıklık
                        spreadRadius: 0.0, //yayılma çapı
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Yeni bir yapılacak görev ekle',
                        border: InputBorder
                            .none), //container bunu koyunca küçüldü none ya
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                ),
                child: ElevatedButton(
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[100],
                    minimumSize: Size(60, 60), //minimum boyutu için
                    elevation: 10, //yükseklik
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}