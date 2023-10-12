import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          label: Text(
            "Title",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          labelStyle: TextStyle(color: kPrimaryColor),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(Color: kPrimaryColor)),
    );
  }
}

OutlineInputBorder buildBorder({Color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Color ?? Colors.white),
  );
}
