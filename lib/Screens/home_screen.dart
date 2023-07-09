// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'Login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 92, 65, 7),
      ),
      child: Column(children: [
        Image.network(
          "https://cdn.pixabay.com/photo/2017/02/17/15/25/quiz-2074324__480.png",
          height: 600,
        ),
        ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(200, 50)),
              backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 90, 57, 8)), // Set the desired color
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Text("start")),
      ]),
    );
  }
}
