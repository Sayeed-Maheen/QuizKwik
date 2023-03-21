import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/widgets/appColors.dart';

class JoinQuizScreenDropdownModel extends StatefulWidget {
  @override
  _JoinQuizScreenDropdownModelState createState() =>
      _JoinQuizScreenDropdownModelState();
}

class _JoinQuizScreenDropdownModelState
    extends State<JoinQuizScreenDropdownModel> {
  late String _selectedValue;

  final List<String> _items = [
    'All',
    'Recently added',
    'Trending',
  ];

  @override
  void initState() {
    super.initState();
    _selectedValue = _items[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 35.h,
      margin: EdgeInsets.only(top: 12),
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
              child: Text(
                value,
                style: TextStyle(fontSize: 14.sp),
              ),
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
