import 'package:flutter/material.dart';
import 'package:shareadminpanel/utils/constants.dart';

class LanguageSelection extends StatefulWidget {
  @override
  _LanguageSelectionState createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  String _selectedActivity = Constants.supportedLanguages[0];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white12,
            border: Border.all(color: Colors.blue, width: 4)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
              value: _selectedActivity,
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              items: Constants.supportedLanguages
                  .map(
                    (val) => DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    ),
                  )
                  .toList(),
              icon: Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: Colors.blue,
                size: 25,
              ),
              onChanged: (value) async {
                if (value == Constants.supportedLanguages[0]) {
                } else if (value == Constants.supportedLanguages[0]) {}
                setState(() => _selectedActivity = value.toString());
              }),
        ),
      ),
    );
  }
}
