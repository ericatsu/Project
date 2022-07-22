// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class Branch extends StatefulWidget {
  const Branch({Key? key}) : super(key: key);

  @override
  State<Branch> createState() => _BranchState();
}

class _BranchState extends State<Branch> {
  var imgList = [
    'images/jordan.jpg',
    'images/jordan.jpg'
  ];

  var descLi = ["Description of the preamble", "Tap to view chapters"];

  var namesLi = ["Preamble", "Chapters"];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

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
                height: height * 0.27,
                child: Row(
                  children: [
                    Container(
                      
                    ),
                  ],
                ),
              ),
              
              ListView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Image.asset(imgList[index]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  descLi[index],
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Container(
                                  width: width * 0.3,
                                  child: Text(
                                    namesLi[index],
                                    maxLines: 3,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey[500]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
