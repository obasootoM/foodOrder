import 'package:flutter/material.dart';
import 'package:food_ordering_app/common/common_button.dart';
import 'package:food_ordering_app/const/const_image.dart';
import 'package:food_ordering_app/const/const_text.dart';
import 'package:food_ordering_app/features/splah_screen/widget/welcome_screen.dart';
import 'package:food_ordering_app/model/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController controller = PageController();

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: const Text(''),
        centerTitle: true,
        title: Image.asset(ConstImage.removebg),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: PageView.builder(
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            controller: controller,
            itemCount: screens.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(screens[index].image),
                  Container(
                    height: 10.0,
                    child: ListView.builder(
                        itemCount: screens.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (_, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Padding(
                                 padding: const EdgeInsets.all(2),
                                 child: Container(
                                    height: 15,
                                    width: currentIndex == index ? 20.0 : 8.0,
                                    decoration: BoxDecoration(
                                        color: currentIndex == index ?
                                            const Color.fromARGB(255, 255, 170, 59) : Colors.grey[300],
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                               ),
                              
                            ],
                          );
                        }),
                  ),
                  ConstText(
                      text: screens[index].text,
                      fontsize: 27.0,
                      weight: FontWeight.bold),
                  ConstText(
                    text: screens[index].desc,
                    fontsize: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CommonButton(
                          widths: width * 0.2,
                          onTap: () {},
                          text: 'Skip',
                          bacground: Colors.white,
                          textcolor: Colors.black
                          
                          ),
                      CommonButton(
                          widths: width * 0.35,
                          onTap: () {
                            if (index == screens.length - 1) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WelcomeScreen()));
                            }
                            controller.nextPage(
                                duration: const Duration(microseconds: 300),
                                curve: Curves.bounceIn);
                          },
                          text: 'Next',
                          bacground: const Color.fromARGB(255, 236, 158, 13),
                          textcolor: Colors.white)
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
