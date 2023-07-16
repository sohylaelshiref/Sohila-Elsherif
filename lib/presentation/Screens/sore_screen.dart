import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/Screens/login.dart';

import '../components/score_components.dart';
import '../data/global.dart';

class Score extends StatelessWidget {
  const Score({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(usernameController.text);
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
                    const TextSpan(
                      text: '\n 10/10',
                      style: TextStyle(
                        color: Color.fromARGB(255, 185, 48, 48),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildResetButton(context),
            buildPlayAgainText(),
          ],
        ),
      ),
    );
  }
}
