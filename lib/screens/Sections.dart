// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sections extends StatefulWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  State<Sections> createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  List<String> names = ['them text', 'Another thing', 'Some thing'];
  List<String> desc = ['second text', 'why not thing', 'That not thing'];

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
                child: ListView.builder(
                  itemCount: names.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) => Container(
                   width: MediaQuery.of(context).size.width,
                   padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                   child: Card(
                     elevation: 5.0,
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                     ),
                     child: Container(
                     width: MediaQuery.of(context).size.width,
                     padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 55.0,
                              height: 55.0,
                              child: CircleAvatar(
                                radius: 70,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.book_online_outlined,
                                  size: 50.0,)
                              ),
                            ),
                            SizedBox(width: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${names[index]}', style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold)),
                                Text('${desc[index]}', style: TextStyle(color: Colors.grey, fontSize: 18.0))
                              ],
                            )
                          ],
                        ),
                      ],
                      ),
                     ),
                   ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
