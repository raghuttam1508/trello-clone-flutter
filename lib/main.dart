//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:trello_clone/HomePage.dart';
import 'package:trello_clone/signup.dart';
import 'package:trello_clone/SignInPage.dart';
import 'package:trello_clone/Board1.dart';
import 'package:trello_clone/loading.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
    routes: {
      // '/': (context) => const Loading(),
      '/home': (context) => HomePage(),
      '/SignIn': (context) => SignInForm(),
      '/SignUp': (context) => SignUpForm(),
      '/Project': (context) => const Project1()
    },
  ));
}
