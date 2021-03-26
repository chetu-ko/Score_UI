import 'dart:core';

class TeamModel {
  final String league;
  final String city;
  final String logo;
  final List<Cards> cards;

  TeamModel({this.league, this.city, this.logo, this.cards});

  factory TeamModel.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['cards'] as List;
    final sublist = list.cast<Map<String, dynamic>>();
    List<Cards> cards2;

    List<Cards> parsecards(responseBody1) {
      return responseBody1
          .map<Cards>((json) => Cards.fromJson(json))
          .toList();
    }

    cards2 = parsecards(sublist);

    return TeamModel(
        league: parsedJson['league'] as String,
        city: parsedJson['city'] as String,
        logo: parsedJson['logo'] as String,
        cards: cards2);
  }
}

class Cards {
  final String image1;
  final String image2;
  final String team1;
  final String team2;

  Cards({this.image1, this.image2, this.team1, this.team2});

  factory Cards.fromJson(Map<String, dynamic> parsedJson) {
    return Cards(
        image1: parsedJson['image1'] as String,
        image2: parsedJson['image2'] as String,
        team1: parsedJson['team1'] as String,
        team2: parsedJson['team2'] as String
    );
  }
}