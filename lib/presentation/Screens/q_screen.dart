import 'package:flutter/material.dart';

import '../components/app_bar_components.dart';
import '../components/question_components.dart';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: myAppBar(
          title: 'Sports Test',
          barcolor: const Color.fromARGB(255, 126, 180, 105),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Question :-',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                child: Text(
                  '1- How many years are the World Cup matches held?',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              buildElevatedButton(context, '1 year'),
              const SizedBox(
                height: 20,
              ),
              buildElevatedButton(context, '2 years'),
              const SizedBox(
                height: 20,
              ),
              buildElevatedButton(context, '3 years'),
              const SizedBox(
                height: 20,
              ),
              buildElevatedButton(context, '4 years'),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 200,
                  height: 331,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/question.png"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
