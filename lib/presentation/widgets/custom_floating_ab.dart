import 'package:flutter/material.dart';

class CustomFloatingAb extends StatelessWidget {
  final Color fabColor;
  final IconData fabIcon;
  const CustomFloatingAb({
    super.key,
    required this.fabColor,
    required this.fabIcon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: fabColor,
      foregroundColor: Colors.white,
      mini: true,
      child: Icon(fabIcon, size: 30),
    );
  }
}
