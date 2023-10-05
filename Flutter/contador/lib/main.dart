import 'package:contador/presentation/screens/counter/counter_functions_screen.dart';
// import 'package:contador/presentation/screens/counter/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.purple,
      ),

      home: const CounterFunctionsScreen()
    );
  }
}
