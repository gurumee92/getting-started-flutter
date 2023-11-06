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

  void onClickedAdd() {
    setState(() {
      count += 1;
    });
  }

  void onClickedSub() {
    setState(() {
      count -= 1;
    });
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    onPressed: onClickedAdd,
                    icon: const Icon(
                      Icons.add_box_rounded,
                    ),
                  ),
                  IconButton(
                    iconSize: 40,
                    onPressed: onClickedSub,
                    icon: const Icon(
                      Icons.remove_circle_outline_outlined,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
