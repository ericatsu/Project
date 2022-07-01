// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class onboard3 extends StatelessWidget {
  const onboard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 50,
            right: 5,
            left: 5,
            child: Lottie.asset('searching.json',
            width: 1000,
            alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[

                  SizedBox(height: height * 0.32),
                  Container(
                    margin: EdgeInsets.only(top: 300.0, bottom: 5.0),
                    child: Text('Something here',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                     ),
                    ),
                  ),
                  Text(
                    'Something here Something here Something here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
