import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    this.maxLines = 1,
    required this.labelName,
    this.onSaved,
    this.onchanged,
  });
  final String labelName;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String?)? onchanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is requird";
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          label: Text(
            labelName,
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
