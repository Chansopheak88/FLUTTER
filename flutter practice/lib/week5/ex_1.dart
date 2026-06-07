import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: const Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          CustomBotton(status: Status.notSelected),
          CustomBotton(status: Status.notSelected),
          CustomBotton(status: Status.notSelected),
          CustomBotton(status: Status.notSelected),
        ],
      )),
    ),
  ),
);

enum Status { selected, notSelected }

class CustomBotton extends StatefulWidget {
  const CustomBotton({super.key, required this.status});
  final Status status;
  @override
  State<CustomBotton> createState() => _CustomBottonState();
}

class _CustomBottonState extends State<CustomBotton> {
  Status currentStat = Status.notSelected;
  void setStatus() {
    setState(() {
      switch (currentStat) {
        case Status.selected:
          currentStat = Status.notSelected;
        case Status.notSelected:
          currentStat = Status.selected;
      }
    });
  }

  String get textLabel {
    switch (currentStat) {
      case Status.selected:
        return "Selected";
      case Status.notSelected:
        return "Not Selected";
    }
  }

  Color get textColor {
    switch (currentStat) {
      case Status.selected:
        return Colors.white;
      case Status.notSelected:
        return Colors.black;
    }
  }

  Color get bgColor {
    switch (currentStat) {
      case Status.selected:
        return Colors.blue[500]!;
      case Status.notSelected:
        return Colors.blue[50]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle s = ElevatedButton.styleFrom(
      backgroundColor: bgColor,
      foregroundColor: textColor,
    );
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: setStatus,
        style: s,
        child: Text(textLabel),
      ),
    );
  }
}
