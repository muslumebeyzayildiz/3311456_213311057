import 'package:flutter/material.dart';
import '../repository/todo_repository.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;

  const ToDoItem({
    Key? key,
    required this.todo,//required gerekli yapıyoruz
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 20),///klasik to do daki dikdörtgenlerin arasında boşluk olsun diye bottom alt için
      child: ListTile(///klasik to do görünümündeki metnin başında veya sonunda bir simge içeren tek bir sabit yükseklikte satır.
        onTap: () { },
        shape: RoundedRectangleBorder(//şekli için
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),//tüm liste için boşluk dolgu ayarı
        tileColor: Colors.white,//Yanlış ListTileseçildiğinde arka plan rengini tanımlar .yani hep rengi bizin için
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.purple[200],
        ),
        title: Text(
          todo.todoText!,///todo repositorydeki texti alması için  ToDo tipinde oluşturduğu todo değişkenin oradaki todoTexti aldı
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,///doğruysa (yapınınca) üstünü çizsin diye değilse bir şey yok
          ),
        ),
        trailing: Container(//trailing çünkü sağda olacak boyut için kutuda olsun containerde
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.lightBlue[400],
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
            print('silindi');

            },
          ),
        ),
      ),
    );
  }
}
