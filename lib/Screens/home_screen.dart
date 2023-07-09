import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Text(
              "Hellow World",
              style: TextStyle(
                  color: Color.fromARGB(255, 7, 38, 218), fontSize: 20),
            ),
            Text(
              "My name is",
              style: TextStyle(
                  color: Color.fromARGB(255, 35, 1, 75), fontSize: 20),
            ),
            Text(
              "sohila",
              style: TextStyle(
                  color: Color.fromARGB(255, 233, 215, 58), fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
