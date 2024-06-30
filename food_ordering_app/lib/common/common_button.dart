import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.bacground,
    required this.textcolor,
    this.widths = 100, 
    this.fontSize,
  }) : super(key: key);
  final VoidCallback onTap;
  final String text;
  final Color? bacground;
  final Color textcolor;
  final double? widths;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: widths,
          height: height * 0.07,
          decoration: ShapeDecoration(
              color: bacground,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: textcolor,
                  fontSize: fontSize,
                  fontFamily: 'Inter'),
            ),
          ),
        ),
      ),
    );
  }
}
