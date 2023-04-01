 import 'package:flutter/material.dart';
 class kapakResmi extends StatelessWidget {
     final double coverHeight = 280;
     final double profileHeight = 144;

    const kapakResmi({ Key? key}) : super(key: key);

     @override
     Widget build(BuildContext context) {
            return Container(
            color: Colors.grey,
            child: Image.network(
            'https://cdn.pixabay.com/photo/2018/08/18/13/26/interface-3614766_960_720.png',
            width: double.infinity,
            height: coverHeight,
            fit: BoxFit.cover,
            )     ,
         );
 }
 }
 /*
   Widget kapakResmi() =>
         Container(
         final double coverHeight =280;
         final double profileHeight =144;
         color: Colors.grey,
         child: Image.network(
         'https://cdn.pixabay.com/photo/2018/08/18/13/26/interface-3614766_960_720.png',
         width: double.infinity,
         height: coverHeight,
         fit: BoxFit.cover,

             //fit:BoxFit.cover
         )     ,
     );
  */