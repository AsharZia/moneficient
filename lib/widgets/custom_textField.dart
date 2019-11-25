import 'package:flutter/material.dart';

class DecoratedFormField extends StatelessWidget {
  final String title;
  final String placeholder;
  DecoratedFormField({this.title, this.placeholder});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.access_alarm),
      ),
      title: TextFormField(
        decoration: InputDecoration(helperText: title, labelText: placeholder),
      ),
    );
  }
}
