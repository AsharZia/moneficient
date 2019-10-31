import 'package:flutter/material.dart';
import 'package:moneficient/widgets/submit_button.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var _sliderInitialValue = 1.0;
  final leftMarginPadding = 16.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 35),
            buildInfoText(
                'Nice to have you here. Fill the form below,\n it helps us serve you better.'),
            buildInfoField('Name', 'Enter your name'),
            buildInfoField('Salary', 'Salary'),
            buildInfoField('Savings', 'Savings'),
            buildInfoField('Currency', 'Currency'),
            Text('Income division'),
            buildInfoText(
                'This is the amount you want to spend on each category.'),
            buildDivisionTile(),
            buildDivisionTile(),
            buildDivisionTile(),
            buildDivisionTile(),
            const SizedBox(height: 35),
            Center(
                child: SubmitButton(
              text: 'Save & continue',
            )),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Padding buildInfoText(String text) {
    return Padding(
      padding: EdgeInsets.only(left: leftMarginPadding),
      child: Text(text),
    );
  }

  Widget buildInfoField(String title, String placeholder) => ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.access_alarm),
        ),
        title: TextFormField(
          decoration:
              InputDecoration(helperText: title, labelText: placeholder),
        ),
      );

  Widget buildDivisionTile() => Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('Utilities'),
            trailing: Text('Rs. 10,000(20%)'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Slider(
              value: _sliderInitialValue,
              min: 1.0,
              max: 10.0,
              divisions: 10,
              label: '$_sliderInitialValue',
              onChanged: (double newValue) {
                setState(() {
                  _sliderInitialValue = newValue;
                });
              },
            ),
          )
        ],
      );
}
