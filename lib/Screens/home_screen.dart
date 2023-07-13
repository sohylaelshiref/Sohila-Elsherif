// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'Login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 600,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/opening.png"),
                  //fit: BoxFit.fill,
                ),
                color: Colors.white,
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(
                      255, 87, 178, 253)), // Set the desired color
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text("start",
                    style: TextStyle(
                      color: Color.fromARGB(255, 29, 28, 28),
                      fontSize: 35,
                    ))),
          ],
        ),
      ),
    );
  }
}
