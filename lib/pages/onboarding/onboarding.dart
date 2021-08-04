import 'dart:ui';

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
  int _currentPage = 0;
  PageController _pageController = PageController();

  _onPageViewChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: _onPageViewChanged,
              children: [
                Screen1(),
                Screen2(),
                Screen3(),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        effect: ExpandingDotsEffect(
                            activeDotColor: cPrimary,
                            dotColor: Colors.black12,
                            dotHeight: 4),
                        onDotClicked: (index) => _pageController.animateToPage(
                            index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceOut),
                      ),
                    ),
                    
                    (_currentPage != 2) ?
                    TextButton(
                        onPressed: () => {},
                        child: Text("SKIP",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: cPrimary,
                            )))
                             : Text("")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
