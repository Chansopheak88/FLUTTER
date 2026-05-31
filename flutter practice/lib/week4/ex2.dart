import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disable }

enum Position { left, right }

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Position position;
  final ButtonType type;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.position = Position.left,
    this.type = ButtonType.primary,
  });

  Color get c {
    switch (type) {
      case ButtonType.primary:
        return Colors.blue;
      case ButtonType.secondary:
        return Colors.green;
      case ButtonType.disable:
        return Colors.grey;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: c,
      ),
      child: Center(
        child: Row(
          children: switch(position){
            Position.left=>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(icon, color: Colors.white),
                
              ),
              Text(label, style: TextStyle(color: Colors.white)),
            ],
            Position.right=>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(label, style: TextStyle(color: Colors.white)),
              ),
              Icon(icon, color: Colors.white),
            ]
          }
        ),
      ),
    );
  }
}
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CustomButton(
                label: 'Submit',
                icon: Icons.check,
              ),
              CustomButton(
                label: 'Time',
                icon: Icons.lock_clock,
                type: ButtonType.secondary,
                position: Position.right,
              ),
              CustomButton(
                label: 'Account',
                icon: Icons.account_box,
                type: ButtonType.disable,
                position: Position.right,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
