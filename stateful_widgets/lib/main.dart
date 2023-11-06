import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int count = 0;

  void onClicked() {
    count += 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widgets',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click Button",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                '$count',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              IconButton(
                iconSize: 40,
                onPressed: onClicked,
                icon: const Icon(
                  Icons.add_box_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
