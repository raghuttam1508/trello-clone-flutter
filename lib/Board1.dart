import 'dart:html';

import "package:flutter/material.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trello_clone/SideBar.dart';

class Project1 extends StatelessWidget {
  const Project1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project 1'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notification_add),
            onPressed: () {},
          )
        ],
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 40, 38, 38),
      ),
      drawer: SideBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: TextButton(
          style: ButtonStyle(),
          onPressed: () {},
        ),
      ),
    );
  }
}
