// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

import '../componantes/componantes.dart';
import 'Score-screen.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: myAppBar(
        title: 'Sports Test',
        barcolor: Color.fromARGB(255, 126, 180, 105),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Question :-',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            child: Text(
              '1- How many years are the World Cup matches held?',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 140,
            height: 30,
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(200, 50)),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 126, 180, 105)), // S
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => score()),
                );
              },
              child: const Text(
                '1 year',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 140,
            height: 30,
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(200, 50)),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 126, 180, 105)), // S
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => score()),
                );
              },
              child: const Text(
                '2 years',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 140,
            height: 30,
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(200, 50)),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 126, 180, 105)), // S
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => score()),
                );
              },
              child: const Text(
                '3 years',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 140,
            height: 30,
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(200, 50)),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 126, 180, 105)), // S
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => score()),
                );
              },
              child: const Text(
                '4 years',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 200,
              height: 331,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/question.png"),
              )),
            ),
          )
        ]),
      ),
    ));
  }
}
