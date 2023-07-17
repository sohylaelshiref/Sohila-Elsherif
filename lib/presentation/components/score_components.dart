import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/data/global.dart';

import '../Screens/categories.dart';

Widget buildBackgroundImage() {
  return Positioned(
    top: 150,
    bottom: 200,
    child: Container(
      height: 430,
      width: 410,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/score.jpg"),
          fit: BoxFit.fill,
        ),
        color: Colors.white,
      ),
    ),
  );
}


Widget buildResetButton(BuildContext context) {
  return Positioned(
    top: 390,
    bottom: 350,
    right: 140,
    left: 140,
    child: SizedBox(
      width: 30,
      height: 20,
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(200, 50)),
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 185, 48, 48)), // S
        ),
        onPressed: () {
          AppController.score = 0;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Exams()),
          );
        },
        child: const Text(
          'Rest',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget buildPlayAgainText() {
  return const Positioned(
    top: 440,
    bottom: 170,
    right: 120,
    left: 173,
    child: Text(
      'play agine',
      style: TextStyle(color: Colors.black, fontSize: 18),
    ),
  );
}
