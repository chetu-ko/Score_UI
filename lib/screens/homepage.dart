import 'package:flutter/material.dart';

import 'package:score_ui/widget/dropdown.dart';
import 'package:score_ui/widget/tabcontent.dart';
import 'package:score_ui/widget/tab_calender.dart';
import 'package:score_ui/widget/calender.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.settings_outlined),
          backgroundColor: Colors.black,
          bottom: tabs(),
          title: DropMenu(),
        ),
        body: TabBarView(
          children: [
            TabContent(),
            CalendarDemo(),
            Icon(Icons.directions_bike,size: 50, color: Colors.white),
            Icon(Icons.account_box_rounded, size: 50,color: Colors.white),
            Icon(Icons.android_rounded,size: 50, color: Colors.white),
            Icon(Icons.card_giftcard, size: 50,color: Colors.white),
            Icon(Icons.apartment,size: 50, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
