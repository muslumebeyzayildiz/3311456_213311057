class ToDo {
  String? id;
  String? todoText;
  bool isDone;
//framework kullanmadığımız için açılışta sonra eklediklerimiz uygulama kapanıp açılınca gidecek. açılınca  sabit hep bunlarla gelsin diye
  ToDo({
    required this.id, ///required bu objeyi çağırdığınız yerlerde bu değişkene bir değer atamanız gerekmektedir.
    required this.todoText,
    this.isDone = false,//varsayılanı yanlış yani daha yapılmadı
  });

  static List<ToDo> todoList() {///todoList adında bir liste oluşturdum
    return [
      ToDo(id: '01', todoText: 'Sabah Egzersizi', isDone: true ),
      ToDo(id: '02', todoText: 'Alışveriş Yap', isDone: true ),
      ToDo(id: '03', todoText: 'E-postaları Kontrol Et', ),
      ToDo(id: '04', todoText: 'Ekip Toplantısı',isDone: true  ),
      ToDo(id: '05', todoText: 'Ders Çalış', ),
      ToDo(id: '06', todoText: 'Yemek Hazırla', ),
      ToDo(id: '07', todoText: 'E-postaları Kontrol Et', ),
      ToDo(id: '08', todoText: 'Ekip Toplantısı', ),
      ToDo(id: '09', todoText: 'Ders Çalış', ),
      ToDo(id: '10', todoText: 'Yemek Hazırla', ),
    ];
  }
}