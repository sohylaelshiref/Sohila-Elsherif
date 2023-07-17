import 'package:flutter/material.dart';

import '../components/score_components.dart';
import '../data/global.dart';

class Score extends StatelessWidget {
  final String? testName;
  const Score({ this.testName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            buildBackgroundImage(),
            Positioned(
              top: 280,
              bottom: 300,
              right: 90,
              left: 120,
              child: RichText(
                text: TextSpan(
                  text: 'Hello ',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '${(AppController.usernametextcontroller).text} ,',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 185, 48, 48),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: '\nyour score is :- ',
                    ),
                    TextSpan(
                      text:
                          '\n ${AppController.score}/${selectedList(testName).length}',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 185, 48, 48),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildResetButton(context),
            // SizedBox(
            //   height: 50,
            // ),
            //buildPlayAgainText(),
          ],
        ),
      ),
    );
  }
}
