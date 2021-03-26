import 'package:flutter/material.dart';

class DropMenu extends StatefulWidget {
  @override
  DropMenuState createState() => DropMenuState();
}

class DropMenuState extends State<DropMenu> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        //padding: EdgeInsets.),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
          hint: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.settings_outlined, color: Colors.white, size: 15),
              Text(
                "FootBall",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['First', 'Second', 'Third', 'Fourth']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ));
          }).toList(),
        )));
  }
}
