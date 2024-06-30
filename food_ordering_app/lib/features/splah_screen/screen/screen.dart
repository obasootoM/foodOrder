import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/features/onbaording_screen/screen/onboard_screen.dart';
import 'package:food_ordering_app/features/splah_screen/widget/stack_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 10), () => 
    Navigator.push(context, MaterialPageRoute(builder: (context) => const OnboardingScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const StackScreen();
  }
}
