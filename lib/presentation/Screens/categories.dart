import 'package:flutter/material.dart';
import '../components/categories_components.dart';
import '../data/data_info.dart';
import 'q_screen.dart';

class Exams extends StatelessWidget {
  const Exams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ExamCard(
              imagePath: "images/sports.png",
              backgroundColor: Colors.white,
              textColor: const Color.fromARGB(255, 21, 79, 97),
              title: "Sports Test",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Question(
                      themeColor: const Color.fromARGB(255, 21, 79, 97),
                      testName: "Sports Test",
                      questionsList: sporttest,
                    ),
                  ),
                );
              },
            ),
            ExamCard(
              imagePath: "images/history.jpg",
              backgroundColor: Colors.black,
              textColor: const Color.fromARGB(255, 255, 255, 255),
              title: "History Test",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Question(
                      themeColor: const Color.fromARGB(255, 223, 183, 5),
                      testName: "History Test",
                      questionsList: historytest,
                    ),
                  ),
                );
              },
            ),
            ExamCard(
              imagePath: "images/science.jpg",
              backgroundColor: Colors.green,
              textColor: const Color.fromARGB(255, 95, 186, 209),
              title: "Science Test",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Question(
                      themeColor: const Color.fromARGB(255, 95, 186, 209),
                      testName: "Science Test",
                      questionsList: sciencetest,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
