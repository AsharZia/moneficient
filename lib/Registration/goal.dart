import 'package:flutter/material.dart';
import 'package:moneficient/global.dart';

class GoalScreen extends StatefulWidget {
  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Set a goal'),
        ),
        body: Column(
          children: <Widget>[
            buildInfoText(
                'Goals help you keep on track. You can add\n more goals later.'),
            buildInfoField('Title', 'Enter your title', maxLength: 20),
            buildInfoField('Price', 'Price'),
            RaisedButton(
              child: Text('Set goal & continue'),
              onPressed: () {},
            ),
          ],
        ));
  }

  Padding buildInfoText(String text) {
    return Padding(
      padding: EdgeInsets.only(left: Global.leftMarginPadding),
      child: Text(text),
    );
  }

  Widget buildInfoField(String title, String placeholder, {int maxLength}) =>
      ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.access_alarm),
        ),
        title: TextFormField(
          decoration:
              InputDecoration(helperText: title, labelText: placeholder),
          maxLength: maxLength,
        ),
      );
}
