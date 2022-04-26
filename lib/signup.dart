//import 'dart:html';

import "package:flutter/material.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'main.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  var userName;
  var mno;
  var emailid;
  var pwd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Sign Up!"),
        ),
        body: Form(
            autovalidateMode: AutovalidateMode.always,
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Hello From Trello!",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.blueGrey[800],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(MdiIcons.accountCheck),
                              border: OutlineInputBorder(),
                              labelText: "Enter Name"),
                          onChanged: (value) {
                            userName = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return ("Please enter your name");
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              icon: Icon(MdiIcons.phoneDial),
                              border: OutlineInputBorder(),
                              labelText: "Enter Mobile Number"),
                          onChanged: (value) {
                            mno = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return ("Please enter your mobilenumber");
                            } else if (value.length != 10) {
                              return ("Please enter correct mobile number");
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(MdiIcons.email),
                              border: OutlineInputBorder(),
                              labelText: "Enter Email ID"),
                          onChanged: (value) {
                            emailid = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return ("Please enter your email ID");
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // SizedBox(
                        //   height: 30,
                        // ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(MdiIcons.formTextboxPassword),
                              border: OutlineInputBorder(),
                              labelText: "Password"),
                          onChanged: (value) {
                            pwd = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return ("Please enter your Password");
                            } else {
                              return null;
                            }
                          },
                        ),
                        FloatingActionButton.extended(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState?.save();

                                // Navigator.of(context).push(MaterialPageRoute(
                                //   builder: (context) => SigninApp(
                                //       uname: userName,
                                //       mobileNumber: mno,
                                //       address: location),
                                // ));
                              }
                            },
                            label: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text('Already have an account?'),
                        Text('Click Here!')
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
