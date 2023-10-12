import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customSearchIcon.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget(
      {super.key, required this.titleName, required this.icon});
  final String titleName;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleName,
            style: TextStyle(fontSize: 30),
          ),
          CustomSearchIcon(
            AppBarIcon: icon,
          ),
        ],
      ),
    );
  }
}
