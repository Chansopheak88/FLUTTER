import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.only(left:50),
        color: Colors.blue[300],
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue[600],
          ),
          child: Center(
            child: Text(
              "CADT STUDENTS",
              style: TextStyle(
                fontSize: 50,
                color: Colors.orange,
              ),
            ),
          ),
        ),
      ),
    )
  );
}

//in this exercise, we haven't use the scaffold widget because 
//we just practice basic layouts
//scaffold basically gives you features like a appbar etc
//this code i think it's for making for example style card card