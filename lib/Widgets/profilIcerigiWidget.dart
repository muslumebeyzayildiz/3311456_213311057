import 'package:flutter/material.dart';


Widget profilIcerigi() =>Column (
  children: [
    const SizedBox(height: 8),
    Text(
      'Müslüme Beyza Yıldız',
      style: TextStyle(fontSize: 28,fontWeight: FontWeight.w100),
    ),
    Text(
      'Bilgisayar Mühendisi',
      style: TextStyle(fontSize: 20,color: Colors.black),
    ),
    const SizedBox(height:16),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: (){},
          child: const Text('Takipçi: 22',
            style: TextStyle(color: Colors.purple),
          ),
        ),

        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: (){},
          child: const Text('Takip: 44',
            style: TextStyle(color: Colors.purple),
          ),
        ),

        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: null,
          child: const Text('Rozet: 6',
            style: TextStyle(color: Colors.purple),
          ),
        ),
      ],
    )
  ],
);