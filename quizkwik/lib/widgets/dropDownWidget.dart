import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/widgets/appColors.dart';

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  late String _selectedValue;

  final List<String> _items = [
    'This week',
    'Recently',
    'Today',
  ];

  @override
  void initState() {
    super.initState();
    _selectedValue =
        _items[0]; // set the initial value to the first item in the list
  }

  @override
  Widget build(BuildContext context) {
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
        child: DropdownButton(
          value: _selectedValue,
          items: _items.map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          underline: Container(
            height: 0,
            color: Colors.transparent,
          ),
          icon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(Icons.arrow_drop_down),
          ),
        ),
      ),
    );
  }
}
