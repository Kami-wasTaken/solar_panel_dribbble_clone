// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:solar_panel_dribbble_clone/pages/home_util/line_chart.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String _dropDownValue = "Top Consumed";

  void dropDownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropDownValue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        items: const [
          DropdownMenuItem(
            value: "Top Consumed",
            child: Text("Top Consumed"),
          ),
          DropdownMenuItem(
            value: "A-Z",
            child: Text("A-Z"),
          ),
          DropdownMenuItem(
            value: "Z-A",
            child: Text("Z-A"),
          ),
          DropdownMenuItem(
            value: "Most Recent",
            child: Text("Most Recent"),
          ),
        ],
        onChanged: dropDownCallback,
        value: _dropDownValue,
        icon: Icon(Icons.keyboard_arrow_down_rounded),
        padding: EdgeInsets.only(left: 10.0),
      ),
    );
  }
}
