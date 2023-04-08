import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/widgets/appColors.dart';

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  // Define a variable to hold the currently selected value
  late String _selectedValue;

  // Define a list of items to be shown in the dropdown
  final List<String> _items = [
    'This week',
    'Recently',
    'Today',
  ];

  @override
  void initState() {
    super.initState();

    // Set the initial value of the dropdown to the first item in the list
    _selectedValue = _items[0];
  }

  @override
  Widget build(BuildContext context) {
    // Create a container with a border and a fixed width
    return Container(
      width: 130.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppColors.colorWhiteLowEmp,
          width: 1,
        ),
      ),
      child: Center(
        // Create a DropdownButton widget with the list of items and a callback
        // function to update the selected value when the user makes a selection
        child: DropdownButton(
          value: _selectedValue,
          items: _items.map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (newValue) {
            // Update the selected value when the user selects a new item
            setState(() {
              _selectedValue = newValue!;
            });
          },
          // Hide the underline of the dropdown button
          underline: Container(
            height: 0,
            color: Colors.transparent,
          ),
          // Add an icon to the dropdown button to indicate that it's a dropdown
          icon: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Icon(Icons.arrow_drop_down),
          ),
        ),
      ),
    );
  }
}
