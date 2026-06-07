import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: [
          Container(
            // YOUR CODE
            //part 1
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.grey.shade900),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Part 1"), Text("This is Part 1")],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          //use stateless widget
          StatelessCard(
            title: 'Stateless widget',
            description: 'this is part 2',
          ),
          StatelessCard(
            title: 'Stateless widget',
            description: 'this is part 2',
            isFav: true,
          ),
          //use statefull card
          StatefullCard(title: "part 3", description: "this is part 3"),
          StatefullCard(title: "part 3", description: "this is part 3"),
        ],
      ),
    ),
  ),
);

//stateless widget
class StatelessCard extends StatelessWidget {
  const StatelessCard({
    super.key,
    required this.title,
    required this.description,
    this.isFav = false,
  });
  final bool isFav;
  final String title;
  final String description;

  Color get c {
    switch (isFav) {
      case true:
        return Colors.red;
      case false:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey.shade900),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(title), Text(description)],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite), color: c),
        ],
      ),
    );
  }
}

//statefull widget
class StatefullCard extends StatefulWidget {
  const StatefullCard({
    super.key,
    required this.title,
    required this.description,
    this.isFav = false,
  });
  final bool isFav;
  final String title;
  final String description;

  @override
  State<StatefullCard> createState() => _StatefullCardState();
}

class _StatefullCardState extends State<StatefullCard> {
  bool currentFav = false;
  void setFav() {
    setState(() {
      switch (currentFav) {
        case true:
          currentFav = false;
        case false:
          currentFav = true;
      }
    });
  }
  Color get c {
    switch (currentFav) {
      case true:
        return Colors.red;
      case false:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey.shade900),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(widget.title), Text(widget.description)],
            ),
          ),
          IconButton(onPressed: setFav, icon: Icon(Icons.favorite), color: c),
        ],
      ),
    );
  }
}
