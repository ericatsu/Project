// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
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

  // On last page function
  bool onLastPage = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Page View
          PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
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
                      _controller.jumpToPage(2);
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
                _controller.previousPage(
                  duration: Duration(milliseconds: 400), 
                  curve: Curves.easeIn
                  );
              },
              child: Icon(
                CupertinoIcons.arrow_left,
                color: Colors.blueAccent,
                size: 40.0,
              ),
            ),

            // dots
            SmoothPageIndicator(controller: _controller, count: 3),

            // next
            onLastPage ?
            GestureDetector(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeIn);
                },
                child: Text('Next'),
                )
              : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                      child: Icon(
                        CupertinoIcons.arrow_right,
                        color: Colors.blueAccent,
                        size: 40.0,
                      ),
                    )
              ],
             ),
          )
        ],
      )
    );
  }
}