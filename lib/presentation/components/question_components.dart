import 'package:flutter/material.dart';

import '../Screens/sore_screen.dart';

Widget buildElevatedButton(BuildContext context, String buttonText) {
  return SizedBox(
    width: 140,
    height: 30,
    child: ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(200, 50)),
        backgroundColor: MaterialStateProperty.all(
          const Color.fromARGB(255, 126, 180, 105),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  Score()),
        );
      },
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
