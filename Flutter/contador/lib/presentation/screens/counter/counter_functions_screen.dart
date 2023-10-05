import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Counter Functions',)
          ),
          // leading: IconButton(
          //   icon: const Icon(Icons.refresh_rounded), 
          //   onPressed: () { 
          //     clickCount = 0;
          //     setState(() {});
          //   },
          // ),

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCount', 
                style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(clickCount == 1? "Click" : "Clicks", style: const TextStyle(fontSize: 25)),
            ],
          ),
        ),

        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh, 
              onPressed: () { 
                clickCount = 0;
                setState(() {});
               },
            ),

            const SizedBox(height: 10,),

            CustomButton(
              icon: Icons.remove, 
              onPressed: () { 
                if (clickCount == 0) return;
                clickCount--;
                setState(() {});
               },
              ),

            const SizedBox(height: 10,),

            CustomButton(
              icon: Icons.add,
              onPressed: () { 
                clickCount++;
                setState(() {});
              },  
            )
          ],
        )
      );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon, 
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}