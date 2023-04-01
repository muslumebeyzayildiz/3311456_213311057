
import 'package:flutter/material.dart';

Widget yapiKarti(String index,String image) => Container(
  width: 150,
  height: 200,
  child: Column(
    children: [Center(child: Text('$index')),
      ClipRRect(//yuvarlamak
        borderRadius: BorderRadius.circular(100),
        child: Image(
            image: AssetImage('assets/images/$image',)

        ),
      ),
    ],
  ),
);