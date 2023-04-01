import 'package:flutter/material.dart';

class basariSayfasi extends StatefulWidget {
  const basariSayfasi({Key? key}) : super(key: key);

  @override
  State<basariSayfasi> createState() => _basariSayfasiState();
}

class _basariSayfasiState extends State<basariSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF285430),
        title: Text('Rozetler'),
      ),
      body: ListView(
        children: [
          Column(
          children: [
            Row(
              children: [
                IconButton(
                  color: Colors.amber[700],
                  iconSize: 80,
                  icon: Icon(Icons.star_rounded),
                  onPressed: () {},
                ), Text('Tüm Rozetlerin kilidini açtınız',
                  style: TextStyle(
                    color: Colors.purple,
                  ),),
              ],
            ),
            Row(
              children: [
                IconButton(
                  color: Colors.amber[700],
                  iconSize: 80,
                  icon: Icon(Icons.brightness_3_outlined),
                  onPressed: () {},
                ),
                Text(
                  '2 Görev Tamamalanınca kilidi açılacaktır',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  color: Colors.amber[700],
                  iconSize: 80,
                  icon: Icon(Icons.brightness_3_sharp),
                  onPressed: () {},
                ),
                Text(
                  '5 Görev Tamamalanınca kilidi açılacaktır',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  color: Colors.amber[700],
                  iconSize:80,
                  icon: Icon(Icons.brightness_2_outlined),
                  onPressed: () {},
                ),
                Text('10 Görev Tamamalanınca kilidi açılacaktır',
                  style: TextStyle(
                    color: Colors.purple,
                  ),),
              ],
            ),
            Row(
              children: [
                IconButton(
                  color: Colors.amber[700],
                  iconSize: 80,
                  icon: Icon(Icons.brightness_2_sharp),
                  onPressed: () {},
                ),
                Text('20 Görev Tamamalanınca kilidi açılacaktır',
                  style: TextStyle(
                    color: Colors.purple,
                  ),),
              ],
            ),
            Row(
              children: [
                IconButton(
                  color: Colors.amber[700],
                  iconSize: 80,
                  icon: Icon(Icons.brightness_1_outlined),
                  onPressed: () {},
                ),
                Text('50 Görev Tamamalanınca kilidi açılacaktır',
                  style: TextStyle(
                    color: Colors.purple,
                  ),),
              ],
            ),

            Row(
              children: [
                IconButton(
                  color: Colors.amber[700],
                  iconSize: 80,
                  icon: Icon(Icons.incomplete_circle_sharp),
                  onPressed: () {},
                ), Text('50 Görev Tamamalanınca kilidi açılacaktır',
                  style: TextStyle(
                    color: Colors.purple,
                  ),),
              ],
            ),

            Row(
              children: [
                IconButton(
                  color: Colors.amber[700],
                  iconSize:80,
                  icon: Icon(Icons.brightness_1_sharp),
                  onPressed: () {},
                ),
                Text('50 Görev Tamamalanınca kilidi açılacaktır',
                  style: TextStyle(
                    color: Colors.purple,
                  ),),
              ],
            ),

          ],
        ),
        ],
      ),
    );
  }
}
