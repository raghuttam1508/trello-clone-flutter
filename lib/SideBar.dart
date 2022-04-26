import 'dart:io';

import 'package:flutter/material.dart';
import 'package:trello_clone/SignInPage.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Raghuttam Parvatikar'),
            accountEmail: Text('2019raghuttam.parvatikar@ves.ac.in'),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.network(
                'https://media-exp1.licdn.com/dms/image/C5603AQH48xg34n1cug/profile-displayphoto-shrink_400_400/0/1591037451562?e=1653523200&v=beta&t=3CB1c3B9DqEg7nRq2XmfgjX8f-PVA4hIweoMnToXw3o',
                fit: BoxFit.cover,
                width: 90,
                height: 90,
              ),
            )),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://images3.alphacoders.com/812/812062.png')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.task),
            title: Text('Boards'),
            onTap: () => null,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInForm()),
              );
            },
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Workspaces'),
          ),
          ListTile(
            leading: Icon(Icons.card_travel_sharp),
            title: Text('My Cards'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
          ),
          ListTile(
            leading: Icon(Icons.book_online),
            title: Text('Terms and Condition'),
          )
        ],
      ),
    );
  }
}
