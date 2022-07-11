// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sections extends StatefulWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  State<Sections> createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  final List<String> _listItem = ['assets/images/jordan.jpg'];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 29, 76, 2),
        elevation: 0,
        title: Text('CONSTITUTIONS'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
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
              DrawerHeader(
                child: Center(
                  child: Text(
                    'L O G O',
                    style: TextStyle(fontSize: 34),
                  ),
                ),
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
                onChanged: (value) {},
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItem
                      .map((item) => Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(item),
                                      fit: BoxFit.cover)),
                              child: Transform.translate(
                                offset: Offset(50, -50),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 63, vertical: 63),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Text(
                                    'Some text',
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
