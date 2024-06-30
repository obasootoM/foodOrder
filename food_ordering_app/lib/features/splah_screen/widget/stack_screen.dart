import 'package:flutter/material.dart';
import 'package:food_ordering_app/const/const_image.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey[200],
      width: width * 1,
      height: height * 1,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(ConstImage.group11)),
          Positioned(
            top: height * 0.8,
            left: width * 0.3,
            child: Image.asset(ConstImage.removebg)),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(ConstImage.group12))
        ],
      ),
    );
  }
}