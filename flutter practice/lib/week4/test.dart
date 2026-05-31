import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.label,
    required this.start,
    required this.end,
  });

  final String label;
  final Color start;
  final Color end;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [start,end],
        ),
      ),
      child: Text(label,style: TextStyle(fontSize: 20,color: Colors.black),),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text("OOP", style: TextStyle(color: Colors.white)),
              ),
            ),

            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text("DART", style: TextStyle(color: Colors.white)),
              ),
            ),

            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text("FLUTTER", style: TextStyle(color: Colors.white)),
              ),
            ),
            GradientButton(label: "hello", start: Colors.blue[100]!, end: Colors.blue[200]!,
            ),
            GradientButton(label: "Hi", start: Colors.yellow[100]!, end: Colors.red[200]!,
            ),
            GradientButton(label: "Bye Bye", start: Colors.red[100]!, end: Colors.yellow[200]!,
            ),
            GradientButton(label: "label", start: Colors.blue[100]!, end:Colors.blue[500]! ),
          ],
        ),
      ),
    ),
  );
}
