import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/components/search_field_widget.dart';
import 'package:movie_app/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  )),
              Positioned(
                  top: screenHeight * 0.4,
                  right: -100,
                  child: Container(
                    height: 166,
                    width: 166,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constants.kPinkColor.withOpacity(0.5),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 200,
                        sigmaY: 200,
                      ),
                      child: Container(
                        height: 166,
                        width: 166,
                        color: Colors.transparent,
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 0,
                  left: -100,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constants.kCyanColor.withOpacity(0.5),
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
                  )),
              SafeArea(
                  bottom: false,
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'What would you\nlike to watch?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 28,
                            color: Constants.kWhiteColor,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SearchFieldWidget(
                          padding: EdgeInsets.symmetric(horizontal: 20)),
                      const SizedBox(
                        height: 39,
                      ),
                      const Text(
                        'New Movies',
                        style: TextStyle(
                          color: Constants.kWhiteColor,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 37,
                      ),
                      SizedBox(
                        height: 160,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            String mask;
                            if(index == 0)
                            {
                              mask = constants
                            }
                            return GestureDetector(
                              child: Container(
                                
                              ),
                            );
                          },
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: newMovies.length,
                        ),
                       ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
