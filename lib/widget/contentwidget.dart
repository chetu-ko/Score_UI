import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';

import 'package:score_ui/modals/team_model.dart';
import 'package:score_ui/widget/card.dart';


Future<List<TeamModel>> fetchTeams() async {
  final response = await rootBundle.loadString("assets/team.json");
  return parsePaths(response);
}

// A function that converts a response body into a List<Paths>.
List<TeamModel> parsePaths(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<TeamModel>((json) => TeamModel.fromJson(json)).toList();
}

class ContentWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TeamModel>>(
      future: fetchTeams(),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);
        return snapshot.hasData
            ? TeamList(teamModel: snapshot.data)
            : Center(child: CircularProgressIndicator());
      },
    );
  }
}

class TeamList extends StatelessWidget {
  final List<TeamModel> teamModel;
  final List<Cards> cards;

  TeamList({Key key, this.teamModel, this.cards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: teamModel.length,
      itemBuilder: (context, index) {
        return ExpansionTile(
          backgroundColor: Colors.black,
          leading: Image(
              height: 30,
              width: 30,
              fit: BoxFit.cover,
              image: AssetImage(teamModel[index].logo)),
          title: Column(
            children: [
              Text(
                teamModel[index].league,
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                teamModel[index].city,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          children: [
            CardMatches(teamModel[index].cards)
          ],

        );
      },
    );
  }
}