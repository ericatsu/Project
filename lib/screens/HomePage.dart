// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = [
    'assets/images/jordan.jpg',
    'assets/images/jordan.jpg'
  ];


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
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItem
                      .map((item) => Card(
                        elevation: 2,
                        color: Colors.blueAccent[75],
                        child: SizedBox(
                          width: 50,
                          height: 300,
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.0, bottom: 5.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 70,
                                  backgroundColor: Colors.amber,
                                  foregroundImage: AssetImage(item),
                                ),
                                SizedBox(height: 10,),
                                Text('Text Here',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                )
                              ],
                             ),
                            ),
                        ),
                      ),
                    ).toList(),
                ),
              ),
            ],
           ),
         ),
        ),
    );
  }
}