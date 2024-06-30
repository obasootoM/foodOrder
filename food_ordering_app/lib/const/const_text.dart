import 'package:flutter/material.dart';

class ConstText extends StatelessWidget {
  const ConstText(
      {super.key, 
      required this.text, 
      required this.fontsize, 
      this.weight, 
      this.color});
  final String text;
  final double fontsize;
  final FontWeight? weight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Inter', 
          fontSize: fontsize, 
          fontWeight: weight,
          color: color
          ),
    );
  }
}
