import 'package:flutter/material.dart';
import 'package:moneficient/global.dart';
import 'package:moneficient/widgets/custom_textField.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  double _sliderUtilityInitialValue = 1.0;
  double _sliderFoodInitialValue = 1.0;
  double _sliderPersonalInitialValue = 1.0;
  double _sliderOtherInitialValue = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
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
            DecoratedFormField(
              title: 'Name',
              placeholder: 'Enter your name',
            ),
            buildInfoField('Salary', 'Salary'),
            buildInfoField('Savings', 'Savings'),
            buildInfoField('Currency', 'Currency'),
            Text('Income division'),
            buildInfoText(
                'This is the amount you want to spend on each category.'),
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
                    value: _sliderUtilityInitialValue,
                    min: 1.0,
                    max: 10.0,
                    onChanged: (double newValue) {
                      setState(() {
                        _sliderUtilityInitialValue = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.access_alarm),
                  title: Text('Food'),
                  trailing: Text('Rs. 8,000(20%)'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48.0),
                  child: Slider(
                    value: _sliderFoodInitialValue,
                    min: 1.0,
                    max: 10.0,
                    onChanged: (double newValue) {
                      setState(() {
                        _sliderFoodInitialValue = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.access_alarm),
                  title: Text('Personal'),
                  trailing: Text('Rs. 10,000(20%)'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48.0),
                  child: Slider(
                    value: _sliderPersonalInitialValue,
                    min: 1.0,
                    max: 10.0,
                    onChanged: (double newValue) {
                      setState(() {
                        _sliderPersonalInitialValue = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.access_alarm),
                  title: Text('Others'),
                  trailing: Text('Rs. 10,000(20%)'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48.0),
                  child: Slider(
                    value: _sliderOtherInitialValue,
                    min: 1.0,
                    max: 10.0,
                    onChanged: (double newValue) {
                      setState(() {
                        _sliderOtherInitialValue = newValue;
                      });
                    },
                  ),
                )
              ],
            ),
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
}
