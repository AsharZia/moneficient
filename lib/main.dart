import 'package:flutter/material.dart';
import 'package:moneficient/Registration/register.dart';
import 'package:moneficient/registration/goal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moneficient',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.purple,
            shape: StadiumBorder(),
            textTheme: ButtonTextTheme.accent,
            minWidth: 200.0),
      ),
      home: RegisterScreen(),
      routes: {
        '/register': (context) => RegisterScreen(),
        '/goal': (context) => GoalScreen()
      },
    );
  }
}
