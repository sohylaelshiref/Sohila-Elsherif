// ignore_for_file: unused_import, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import 'Q-screen.dart';

class Exams extends StatelessWidget {
  const Exams({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/sports.png"),
                fit: BoxFit.fill,
              ),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Question()));
                    },
                    child: const Text('Sports Test',
                        style: TextStyle(
                            color: Color.fromARGB(255, 21, 79, 97),
                            fontSize: 38,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/history.jpg"),
                fit: BoxFit.fill,
              ),
              color: Colors.black,
            ),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Question()));
                    },
                    child: const Text('History Test',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 38,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/science.jpg"),
                fit: BoxFit.fill,
              ),
              color: Colors.green,
            ),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Question()));
                    },
                    child: const Text('Science Test',
                        style: TextStyle(
                            color: Color.fromARGB(255, 95, 186, 209),
                            fontSize: 38,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
          flex: 1,
        )
      ]),
    ));
  }
}
