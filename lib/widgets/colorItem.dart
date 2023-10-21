import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.hasColor, required this.color});
  final bool hasColor;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return hasColor
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 20,
            backgroundColor: color,
          );
  }
}
