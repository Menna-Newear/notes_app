import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customSearchIcon.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Notes",
            style: TextStyle(fontSize: 30),
          ),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
