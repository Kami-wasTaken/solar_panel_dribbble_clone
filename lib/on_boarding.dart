// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:solar_panel_dribbble_clone/onboarding_pages/page1.dart';
import 'package:solar_panel_dribbble_clone/onboarding_pages/page2.dart';
import 'package:solar_panel_dribbble_clone/onboarding_pages/page3.dart';

import 'pages/home_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.6),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ColorTransitionEffect(
                dotHeight: 4,
                dotWidth: 25,
                spacing: 12.0,
                activeDotColor: Colors.black87,
                dotColor: Colors.black12,
              ),
            ),
          ),
          Container(
            alignment: Alignment(0, 0.85),
            child: FilledButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 120.0, vertical: 20),
                  child: Text("Get Started",
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.black))),
          ),
        ],
      ),
    );
  }
}
