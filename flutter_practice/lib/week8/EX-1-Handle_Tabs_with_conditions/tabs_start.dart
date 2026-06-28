import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key, required this.appTabs});
  final AppTabs appTabs;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appTabs.color,
      child: Center(child: Text(appTabs.label)),
    );
  }
}

enum AppTabs {
  red('red screen', Colors.red),
  green('green screen', Colors.green),
  blue('blue screen', Colors.blue);

  final String label;
  final Color color;
  const AppTabs(this.label, this.color);
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Screen currentScreen = Screen(appTabs: AppTabs.blue);
  Widget get content {
    return currentScreen;
  }

  void goToBlue() {
    setState(() {
      currentScreen = Screen(appTabs: AppTabs.blue);
    });
  }
  void goToRed() {
    setState(() {
      currentScreen = Screen(appTabs: AppTabs.red);
    });
  }
  void goToGreen() {
    setState(() {
      currentScreen = Screen(appTabs: AppTabs.green);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabs navigation")),
      body: content,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: goToRed, icon:Icon(Icons.home),color: Colors.red,),
            IconButton(onPressed: goToBlue, icon:Icon(Icons.home),color: Colors.blue,),
            IconButton(onPressed: goToGreen, icon:Icon(Icons.home),color: Colors.green,),

          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: App()));
}
