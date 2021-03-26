import 'package:flutter/material.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';
import 'package:score_ui/widget/tabcontent.dart';

Widget CalendarDemo() {
  return Column(
     children: [
       HorizontalCalendar(
            date: DateTime.now().add(Duration(days: 0)),
            textColor: Colors.white,
            backgroundColor: Colors.black,
            selectedColor: Colors.orange,
            onDateSelected: (date) => TabBarView(
                children: [
                      TabContent(),
                   //Icon(Icons.directions_bike),
                ],),
        )]);
}
