// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/onBoardScreens/onboard1.dart';
import 'package:project/onBoardScreens/onboard2.dart';
import 'package:project/onBoardScreens/onboard3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({ Key? key }) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  // Pages
  PageController _controller = PageController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Page View
          PageView(
          controller: _controller,
          children: [
            onboard1(),
            onboard2(),
            onboard3()
          ],
        ),

        // Skip
        Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(4);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ),
                ],
              ),

        // Indicators
        Container(
          //Alignments
          alignment: Alignment(0, 0.70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            // previous
            GestureDetector(
              onTap: () {
                _controller.nextPage(duration: duration, curve: curve)
              },
            ),

            // dots
            SmoothPageIndicator(controller: _controller, count: 3),

            // next
            GestureDetector(
              onTap: () {
                _controller.nextPage(duration: duration, curve: curve)
              },
            ),
            ],
          ),
          )
        ],
      )
    );
  }
}