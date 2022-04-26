import "package:flutter/material.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trello_clone/Board1.dart';
import 'package:trello_clone/SideBar.dart';
//import 'package:trello_clone/NavBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(child: Text('Deep Blue')),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: NetworkImage(
                      'https://images3.alphacoders.com/812/812062.png'),
                  fit: BoxFit.fill,
                  height: 30,
                  width: 30,
                ),
                Text(' Project 1'),
                SizedBox(width: 10)
              ],
            ),
            Row(children: [
              Image(
                image: NetworkImage(
                    'https://images3.alphacoders.com/812/812062.png'),
                fit: BoxFit.fill,
                height: 30,
                width: 30,
              ),
              Text(' Project 2'),
            ]),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Project1()),
                );
              },
              child: new Text("Workspace"),
            ),
            Row(
              children: [
                Image(
                  image: NetworkImage(
                      'https://images3.alphacoders.com/812/812062.png'),
                  fit: BoxFit.fill,
                  height: 30,
                  width: 30,
                ),
                Text(' Project 3'),
              ],
            ),
            Row(
              children: [
                Image(
                  image: NetworkImage(
                      'https://images3.alphacoders.com/812/812062.png'),
                  fit: BoxFit.fill,
                  height: 30,
                  width: 30,
                ),
                Text(' Project 4'),
              ],
            ),
          ],
        ),
      ),
      drawer: SideBar(),
      appBar: AppBar(
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
        title: Text(
          "Boards",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            //fontWeight: FontWeight.bold,
            //fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
