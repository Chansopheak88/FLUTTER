import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color bgColor;

  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.bgColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Center(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(icon, color: Colors.white),
            ),
            Text(title, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 20,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.travel_explore, color: Colors.white),
                      ),
                      Text("Travelling", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              //use statelesswidget hobbycard
              HobbyCard(title: "skating", icon: Icons.skateboarding),
              HobbyCard(
                title: "running",
                icon: Icons.run_circle,
                bgColor: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
