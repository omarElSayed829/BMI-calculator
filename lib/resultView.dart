import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    home: Scaffold(
      appBar: AppBar(

      ),
      body:const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello")
        ],
      ),
    ),
   );
  }
}
