import 'package:flutter/material.dart';
import 'package:shopdz/consts/consts.dart';

class CheckBoxDropDown extends StatefulWidget {
  @override
  _CheckBoxDropDownState createState() => _CheckBoxDropDownState();
}

class _CheckBoxDropDownState extends State<CheckBoxDropDown> {
  List<String> items = ['  Sport', '  Cars', '  Clothes', '  Electronique'];
  List<bool> checkedItems = List<bool>.filled(4, false);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelStyle: TextStyle(
          fontFamily: semibold,
          fontSize: 18
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 8.0), // Set the vertical padding

        
      ),
      value: null, // Initially, no item is selected
      items: items.map((String item) {
        int index = items.indexOf(item);
        return DropdownMenuItem<String>(
          value: item,
          child: Row(
            children: [
              Text(item),
            ],
          ),
        );
      }).toList(),
      onChanged: (String? value) {},
    );
  }
}
