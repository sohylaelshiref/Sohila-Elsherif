import 'package:flutter/material.dart';

import '../components/score_components.dart';

class Score extends StatelessWidget {
  const Score({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            buildBackgroundImage(),
            buildScoreText(),
            buildResetButton(context),
            buildPlayAgainText(),
          ],
        ),
      ),
    );
  }
}
