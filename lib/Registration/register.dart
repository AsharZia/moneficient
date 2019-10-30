import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var _sliderInitialValue = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
                'Nice to have you here. Fill the form below,\n it helps us serve you better.'),
            _buildInfoField('Name', 'Enter your name'),
            _buildInfoField('Salary', 'Salary'),
            _buildInfoField('Savings', 'Savings'),
            _buildInfoField('Currency', 'Currency'),
            Text('Income division'),
            Text('This is the amount you want to spend on each category.'),
            _buildDivisionTile(),
            _buildDivisionTile(),
            _buildDivisionTile(),
            _buildDivisionTile(),
            _buildDivisionTile(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoField(String title, String placeholder) => ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.access_alarm),
        ),
        title: TextFormField(
          decoration:
              InputDecoration(helperText: title, labelText: placeholder),
        ),
      );

  Widget _buildDivisionTile() => Column(
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
