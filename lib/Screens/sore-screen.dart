// ignore_for_file: prefer_const_constructors, file_names, camel_case_types

import 'package:flutter/material.dart';

import 'Login.dart';

class score extends StatelessWidget {
  const score({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 150,
              bottom: 200,
              child: Container(
                height: 430,
                width: 410,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/score.jpg"),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 280,
              bottom: 300,
              right: 90,
              left: 120,
              child: RichText(
                text: TextSpan(
                  text: 'Hello ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: const [
                    TextSpan(
                      text: 'Sohila ,',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 185, 48, 48),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '\nyour score is :- ',
                    ),
                    TextSpan(
                        text: '\n 10/10',
                        style: TextStyle(
                          color: Color.fromARGB(255, 185, 48, 48),
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 390,
              bottom: 350,
              right: 140,
              left: 140,
              child: Container(
                width: 30,
                height: 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(200, 50)),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 185, 48, 48)), // S
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: const Text(
                    'Rest',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 440,
              bottom: 170,
              right: 120,
              left: 173,
              child: Text(
                'play agine',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
