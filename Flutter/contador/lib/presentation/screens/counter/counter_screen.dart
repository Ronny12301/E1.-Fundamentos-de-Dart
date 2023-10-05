import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCount = 0;
  String txtClicks = "Clicks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCount', 
                style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(txtClicks, style: const TextStyle(fontSize: 25)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            clickCount++;

            txtClicks = clickCount == 1? "Click" : "Clicks";

            setState(() {});
          },
          child: const Icon(Icons.add),
        )
      );
  }
}