
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart'; //takvim
import 'package:intl/date_symbol_data_local.dart';//dil için


DateTime today = DateTime.now(); //takvim açılışta focus bugünde olsun diye

Widget takvimWidgeti() {
  return Column(
    children: [
      const Text("MYBee ToDo uygulamasına hoş geldiniz"),
      Container(
        child: TableCalendar(
          locale: 'tr_TR',
          rowHeight: 43,
          headerStyle:
          const HeaderStyle(formatButtonVisible: false, titleCentered: true),
          availableGestures: AvailableGestures.all,
          focusedDay: today,
          //bugünün tarihini açılışta
          firstDay: DateTime.utc(2022, 08, 02),
          lastDay: DateTime.utc(2032, 08, 02),
        ),
      ),
    ],
  );
}