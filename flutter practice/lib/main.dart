import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Text(
          "Ronan The Best!",
          style:TextStyle(
            fontSize: 50,
            color: Colors.orange,
          ),
          ),
      )
    ),
  );
}
