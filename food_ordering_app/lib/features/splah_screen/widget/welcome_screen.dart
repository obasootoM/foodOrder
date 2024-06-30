import 'package:flutter/material.dart';
import 'package:food_ordering_app/common/common_button.dart';
import 'package:food_ordering_app/const/const_image.dart';
import 'package:food_ordering_app/const/const_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: width *1,
            height: height * 0.5,
            child: Stack(children: [
              Positioned(
                right: 0,
                top: height * 0.1,
                child: Image.asset(ConstImage.group532)),
              Positioned(
                top: height * 0.08,
                left: width * 0.1,
                child: Image.asset(ConstImage.removebg)),
            ]
            ),
          ),
          Center(child: Image.asset(ConstImage.welcome)),
          const SizedBox(height: 20,),
          const ConstText(
            text: 'Would you like to Register or Continue as', 
            fontsize: 15,
            weight: FontWeight.bold,
            ),
          const SizedBox(height: 20,),
          CommonButton(
          widths: width * 0.8,
          fontSize: 20,
          onTap: (){}, 
          text: 'Customer', 
          bacground: Colors.grey[200], 
          textcolor: const Color.fromARGB(255, 255, 170, 59)),
          const ConstText(text: 'Or', fontsize: 20,weight: FontWeight.bold,),
          CommonButton(
          widths: width * 0.8,
          fontSize: 20,
          onTap: (){}, 
          text: 'Delivary Man', 
          bacground: const Color.fromARGB(255, 255, 170, 59), 
          textcolor: Colors.white),
          CommonButton(
          widths: width * 0.8,
          fontSize: 20,
          onTap: (){}, 
          text: 'Become  a seller', 
          bacground: const Color.fromARGB(255, 185, 87, 6), 
          textcolor: const Color.fromARGB(255, 255, 170, 59)),
        ],
      ),
    );
  }
}
