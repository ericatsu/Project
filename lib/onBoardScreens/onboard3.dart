import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class onboard3 extends StatelessWidget {
  const onboard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Lottie.asset('searching.json'),
          ),
        ),
      ),
    );
  }
}
