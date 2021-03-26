import 'package:flutter/material.dart';
import 'package:score_ui/modals/team_model.dart';

Widget CardMatches(List<Cards> cards) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Card(
                color: Colors.white10,
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20.0),
                        child:
                            Text("Ft", style: TextStyle(color: Colors.grey))),
                    Container(
                      width: 200,
                      height: 60,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(cards[index].image1,
                                  height: 20, width: 20, fit: BoxFit.cover),
                              Image.asset(
                                cards[index].image2,
                                height: 20,
                                width: 20,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(left: 20.0)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(cards[index].team1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.grey)),
                              Text(cards[index].team2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.grey))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: 50,
                        child: Icon(Icons.star_border_outlined,
                            color: Colors.grey))
                  ],
                ),
              )
          );
        }
     );
}

