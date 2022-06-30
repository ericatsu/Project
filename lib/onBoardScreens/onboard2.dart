import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class onboard2 extends StatelessWidget {
  const onboard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Lottie.asset('student.json'),
      ),
    );
  }
}
