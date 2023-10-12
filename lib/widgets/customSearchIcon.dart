import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.AppBarIcon});
  final Icon AppBarIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: AppBarIcon,
          iconSize: 28,
        ),
      ),
    );
  }
}
