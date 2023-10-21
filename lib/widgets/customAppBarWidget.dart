import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customIcon.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget(
      {super.key, required this.titleName, required this.icon, this.onPress});
  final String titleName;
  final Icon icon;
  final void Function()? onPress;

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
          CustomIcon(
            onPress: onPress,
            AppBarIcon: icon,
          ),
        ],
      ),
    );
  }
}
