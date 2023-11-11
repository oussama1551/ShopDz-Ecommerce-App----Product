import 'package:flutter/material.dart';
import 'package:shopdz/consts/consts.dart';

enum PriceType { retail, wholesale, halfWholesale }

class MyRadioButton extends StatefulWidget {
  @override
  _MyRadioButtonState createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  PriceType _selectedPriceType = PriceType.retail;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          value: PriceType.retail,
          groupValue: _selectedPriceType,
          onChanged: (value) {
            setState(() {
              _selectedPriceType = value!;
            });
          },
          activeColor: redColor,
        ),
        Text('Retail'),
        Radio(
          
          
          value: PriceType.wholesale,
          groupValue: _selectedPriceType,
          onChanged: (value) {
            setState(() {
              _selectedPriceType = value!;
            });
          },
          activeColor: redColor,
        ),
        Text('Wholesale'),
      ],
    );
  }
}