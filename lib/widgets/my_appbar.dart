import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  final IconData leftIcon;

  final IconData rightIcon;

  const MyAppbar({required this.leftIcon, required this.rightIcon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[Icon(leftIcon), Icon(rightIcon)],
    );
  }
}
