// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Branch extends StatefulWidget {
  const Branch({ Key? key }) : super(key: key);

  @override
  State<Branch> createState() => _BranchState();
}

class _BranchState extends State<Branch> {
  final List imgItem = [
    Image.asset('images/jordan.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height * 0.35,
            color: Colors.amber,
          ),

          Column(
                children: [
                  Container(
                    height: height * 0.25,
                    child: Row(
                      children: [
                        
                      ],
                    ),
                  ),
                ],
              ),
        ],
      ),
    );
  }
}