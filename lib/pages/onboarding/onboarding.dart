import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:waverr/pages/onboarding/screen1.dart';
import 'package:waverr/pages/onboarding/screen2.dart';
import 'package:waverr/pages/onboarding/screen3.dart';
import 'package:waverr/styles/colors.dart';

class OnBoarding extends StatefulWidget {
  static final String route = "onboarding";

  OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  PageController _pageController = PageController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              Screen1(),
              Screen2(),
              Screen3(),
            ],
          ),

          Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        effect: ExpandingDotsEffect(activeDotColor: cPrimary, dotColor: Colors.black12, dotHeight: 4),
                        onDotClicked: (index) => _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.bounceOut),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

