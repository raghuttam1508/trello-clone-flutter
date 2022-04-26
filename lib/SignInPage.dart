import "package:flutter/material.dart";
import 'package:trello_clone/HomePage.dart';
import 'main.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

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

                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomePage()));
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
                        Text('New User?'),
                        Text('Click Here!')
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
