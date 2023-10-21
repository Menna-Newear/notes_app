import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.AppBarIcon, this.onPress});
  final Icon AppBarIcon;
  final void Function()? onPress;
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
          onPressed: onPress,
          icon: AppBarIcon,
          iconSize: 28,
        ),
      ),
    );
  }
}
