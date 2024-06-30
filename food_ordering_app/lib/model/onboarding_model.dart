import 'package:flutter/material.dart';
import 'package:food_ordering_app/const/const_image.dart';

class OnboardModel {
  String image;
  String text;
  String desc;
  Color bg;
  Color button;
  OnboardModel({
    required this.image,
    required this.text,
    required this.desc,
    required this.bg,
    required this.button,
  });

  
}
List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      image: ConstImage.illustration, 
      text: 'Wide range of Food Categories & more', 
      desc: 'Browse through our extensive list of restuarants and dishes, and when you are ready to order'
      'simply add your desired items to cart and checkout. it\'s that easy', 
      bg: Colors.white, 
      button: const Color.fromRGBO(243, 109, 6, 0.918)),
      OnboardModel(
      image: ConstImage.casualLife, 
      text: 'Free delivary for one month!', 
      desc: 'Get your favourite meals delivered to your doorstep for free with our online foor'
      'delivary app - enjoy a whole month of complimentary delivary', 
      bg: Colors.white, 
      button: const Color.fromRGBO(243, 109, 6, 0.918)),
      OnboardModel(
      image: ConstImage.casualside, 
      text: 'Get started on Ordering your Food', 
      desc: 'Please create an account or sign in to your existing account to start browsing our selection'
      'of delicious meals from your favourite restuarant', 
      bg: Colors.white, 
      button: const Color.fromRGBO(243, 109, 6, 0.918))
  ];
