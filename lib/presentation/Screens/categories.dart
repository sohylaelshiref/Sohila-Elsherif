import 'package:flutter/material.dart';
import '../components/categories_components.dart';
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
                    builder: (context) => const Question(),
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
                    builder: (context) => const Question(),
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
                    builder: (context) => const Question(),
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
