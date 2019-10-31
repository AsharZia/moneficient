import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  const SubmitButton({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      padding: const EdgeInsets.all(25.0),
      child: Text(text),
    );
  }
}
