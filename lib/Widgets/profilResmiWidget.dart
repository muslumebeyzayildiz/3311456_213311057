import 'package:flutter/material.dart';
class profilResmi extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;

  const profilResmi({ Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: NetworkImage(
        'https://cdn.pixabay.com/photo/2020/11/17/13/22/student-5752322_960_720.png',

      ),
    );
  }
  }

/*profil sayfasında scaffoldun altında da olbilirdii o zaman böyle kullanılacaktı
*  Widget profilResmi() =>
      CircleAvatar(

        //double profileHeight =144;//resmimizin yüksekliği
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
          'https://cdn.pixabay.com/photo/2020/11/17/13/22/student-5752322_960_720.png',

        ),
      );*/