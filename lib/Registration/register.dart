import 'package:flutter/material.dart';
import 'package:moneficient/global.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var _sliderUtilityInitialValue = 1.0;
  // var _sliderFoodInitialValue = 1.0;
  // var _sliderPersonalInitialValue = 1.0;
  // var _sliderOtherInitialValue = 1.0;
  // final leftMarginPadding = 16.0;
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
            buildDivisionTile(
                sliderInitialValue: _sliderUtilityInitialValue,
                sliderMinValue: 1.0,
                sliderMaxValue: 10.0,
                sliderDivisions: 10,
                sliderLabel: '$_sliderUtilityInitialValue'),
            // buildDivisionTile(),
            // buildDivisionTile(),
            // buildDivisionTile(),
            const SizedBox(height: 35),
            Center(
                child: RaisedButton(
              child: Text('Save & continue'),
              onPressed: () => Navigator.pushNamed(context, '/goal'),
            )),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Padding buildInfoText(String text) {
    return Padding(
      padding: EdgeInsets.only(left: Global.leftMarginPadding),
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

  Widget buildDivisionTile(
          {double sliderInitialValue,
          double sliderMinValue,
          double sliderMaxValue,
          int sliderDivisions,
          String sliderLabel}) =>
      Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('Utilities'),
            trailing: Text('Rs. 10,000(20%)'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48.0),
            child: Slider(
              value: sliderInitialValue, //_sliderUtilityInitialValue,
              min: sliderMinValue, //1.0,
              max: sliderMaxValue, //10.0,
              divisions: sliderDivisions, //10,
              label: sliderLabel, //'$_sliderUtilityInitialValue',
              onChanged: (double newValue) {
                setState(() {
                  sliderInitialValue = newValue;
                });
              },
            ),
          )
        ],
      );
}
