import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -100,
                child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.kGreenColor.withOpacity(0.5),
              ),
              child: BackdropFilter(
                  filter: ImageFilter.blur(
                sigmaX: 200,
                sigmaY: 200,
              ),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.transparent,
              ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
