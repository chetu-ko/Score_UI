import 'package:flutter/material.dart';
import 'package:score_ui/widget/contentwidget.dart';

class TabContent extends StatefulWidget {
  @override
  TabContentState createState() => TabContentState();
}

class TabContentState extends State<TabContent> {

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.black,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
            children: [
              ContentWidget(),

          ],
        )
    );
  }
}
