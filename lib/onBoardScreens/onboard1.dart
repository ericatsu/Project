// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class onboard1 extends StatelessWidget {
  const onboard1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Lottie.asset('online-study.json'),
      ),
    );
  }
}