import 'package:flutter/material.dart';

import '../widgets/appColors.dart';

class GenderModel extends StatefulWidget {
  const GenderModel({Key? key}) : super(key: key);

  @override
  State<GenderModel> createState() => _GenderModelState();
}

class _GenderModelState extends State<GenderModel> {
  String? _selectedGender;

  List<String> _genderOptions = [
    'Male',
    'Female',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedGender,
      onChanged: (String? newValue) {
        setState(() {
          _selectedGender = newValue;
        });
      },
      items: _genderOptions.map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
      decoration: InputDecoration(
        hintText: 'Gender',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(56),
          borderSide: const BorderSide(
            color: AppColors.colorWhiteLowEmp,
            width: 1,
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(56),
          borderSide: const BorderSide(
            color: AppColors.colorWhiteLowEmp,
            width: 1,
          ),
        ),
      ),
    );
  }
}
