// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor:  Color.fromRGBO(45, 29, 76, 2),
        elevation: 0,
        title:  Text('CONSTITUTIONS'),
        centerTitle: true,
        actions:  [
          IconButton(
            onPressed: (){
            // Action here
          }, 
          icon: Icon(Icons.share))
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 141, 123, 175),
          child: ListView(
            children: [
              DrawerHeader(child: Center(
                child: Text('L O G O',
                style: TextStyle(fontSize: 34),
                ),),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 1',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  // Navigator.of(context).push(Ma)
                },
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
           padding: EdgeInsets.all(20),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                onChanged: (value) {
                  
                },
              )
            ],
           ),
         ),
        ),
    );
  }
}