import 'package:flutter/material.dart';

Widget tabs() {
  return TabBar(
      unselectedLabelColor: Colors.white,
      //indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Colors.orange,
      tabs: [
        Tab(
          child: Align(
            alignment: Alignment.center,
            child: Icon(Icons.live_tv_sharp, size: 15),
          ),
        ),
        Tab(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(children: [
              Expanded(child: Text("Thu", style: TextStyle(fontSize: 9))),
              Expanded(
                  child: Text(" 09 Jan",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10))),
            ]),
          ),
        ),
        Tab(
          child: Align(
            alignment: Alignment.center,
            child: Column(children: [
              Expanded(child: Text("Fri", style: TextStyle(fontSize: 9))),
              Expanded(
                  child: Text(" 10 Jan",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10))),
            ]),
          ),
        ),
        Tab(
          child: Align(
            alignment: Alignment.center,
            child: Column(children: [
              Expanded(child: Text("Sat", style: TextStyle(fontSize: 9))),
              Expanded(
                  child: Text(" 11 Jan",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10))),
            ]),
          ),
        ),
        Tab(
          child: Align(
            alignment: Alignment.center,
            child: Column(children: [
              Expanded(child: Text("Sun", style: TextStyle(fontSize: 9))),
              Expanded(
                  child: Text(" 12 Jan",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10))),
            ]),
          ),
        ),
        Tab(
          child: Align(
            alignment: Alignment.center,
            child: Column(children: [
              Expanded(child: Text("Mon", style: TextStyle(fontSize: 9))),
              Expanded(
                  child: Text(" 13 Jan",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10))),
            ]),
          ),
        ),
        Tab(
          child: Align(
            alignment: Alignment.center,
            child: Icon(Icons.calendar_today,size: 15),
          ),
        ),
      ]);
}
