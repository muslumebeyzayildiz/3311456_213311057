class MesajlarRepository{
final List<Mesaj>mesajlar=[
  Mesaj("Merhaba", "Ali", DateTime.now().subtract(Duration(minutes: 5))),
  Mesaj("orada mısın", "Ali", DateTime.now().subtract(Duration(minutes: 3))),
  Mesaj("evet", "Ayşe", DateTime.now().subtract(Duration(minutes: 2))),
  Mesaj("ne haber", "Ayşe", DateTime.now().subtract(Duration(minutes: 1))),
];

}

class Mesaj {
  String yazi;// ALT + ENTER save yazi to dictionary
  String gonderen;
  DateTime zaman;

  Mesaj(this.yazi, this.gonderen, this.zaman);//ALT + İNSERTle constructer oluşturduk

}