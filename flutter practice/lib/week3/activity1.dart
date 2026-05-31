import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Column(
        children: [
          SizedBox(height: 50,),
          Container(color: Colors.blue,height: 300,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Container(color: Colors.green,height: 100,)),
              Container(width: 100,height: 100,color: Colors.pink,),
            ],
          ),
          Row(
            children: [
              Expanded(child: Container(color: Colors.yellow,height: 100,),),
              SizedBox(width:20),
              Expanded(child: Container(color: Colors.yellow,height: 100,),),
              SizedBox(width:20),
              Expanded(child: Container(color: Colors.yellow,height: 100,),),
            ],
          ),
          SizedBox(height: 20,),
          //remaining use exp
          Expanded(child: Container(color: Colors.pink,)),
        ],
      ),
    ),
  );
}
