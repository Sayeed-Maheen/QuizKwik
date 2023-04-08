import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/widgets/appColors.dart';

class MathScreenDropdownModel extends StatefulWidget {
  const MathScreenDropdownModel({super.key});

  @override
  _MathScreenDropdownModelState createState() =>
      _MathScreenDropdownModelState();
}

class _MathScreenDropdownModelState extends State<MathScreenDropdownModel> {
  late String _selectedValue;

  final List<String> _items = [
    'All',
    'Recently added',
    'Trending',
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
      width: 168.w,
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppColors.colorWhiteLowEmp,
          width: 1,
        ),
      ),
      child: Center(
        child: DropdownButton(
          borderRadius: BorderRadius.circular(12),
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
          icon: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Icon(Icons.arrow_drop_down),
          ),
        ),
      ),
    );
  }
}
