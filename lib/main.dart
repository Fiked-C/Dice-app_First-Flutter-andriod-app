// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main() {
  //main is the custom function
  runApp(
    const MaterialApp(
      home: Scaffold(
        //scaffold helps us to set up a good looking screen on the app.
        // You can have multiple screeens with the help of scaffold.
        backgroundColor: Color.fromARGB(255, 179, 70, 37),

        //TO CREATE A SMOOTH GRADIENT TRANSITION FOR THE APP BACKGROUND
        body: GradientContainer(
            Color.fromARGB(255, 16, 3, 44), Color.fromARGB(255, 24, 121, 212)),
      ), //this was created on a separate file
      // and would be imported above.
      //this was done to improve the readaility of the code else the code would be so much longer and annoying
    ),
  ); //runApp is a function created for flutter
}
