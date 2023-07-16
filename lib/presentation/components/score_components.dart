import 'package:flutter/material.dart';
import '../Screens/home_screen.dart';

Widget buildBackgroundImage() {
  return Positioned(
    top: 150,
    bottom: 200,
    child: Container(
      height: 430,
      width: 410,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/score.jpg"),
          fit: BoxFit.fill,
        ),
        color: Colors.white,
      ),
    ),
  );
}

// Widget buildScoreText({
//   required username,
// }) {

//   return Positioned(
//     top: 280,
//     bottom: 300,
//     right: 90,
//     left: 120,
//     child: RichText(
//       text: TextSpan(
//         text: 'Hello ',
//         style: const TextStyle(
//           fontSize: 20,
//           color: Colors.black,
//         ),
//         children: [
//           TextSpan(
//             text: '${usernameController.text} ,',
//             style: const TextStyle(
//               fontSize: 20,
//               color: Color.fromARGB(255, 185, 48, 48),
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const TextSpan(
//             text: '\nyour score is :- ',
//           ),
//           const TextSpan(
//               text: '\n 10/10',
//               style: TextStyle(
//                 color: Color.fromARGB(255, 185, 48, 48),
//               )),
//         ],
//       ),
//     ),
//   );
// }

Widget buildResetButton(BuildContext context) {
  return Positioned(
    top: 390,
    bottom: 350,
    right: 140,
    left: 140,
    child: SizedBox(
      width: 30,
      height: 20,
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(200, 50)),
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 185, 48, 48)), // S
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
        },
        child: const Text(
          'Rest',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget buildPlayAgainText() {
  return const Positioned(
    top: 440,
    bottom: 170,
    right: 120,
    left: 173,
    child: Text(
      'play agine',
      style: TextStyle(color: Colors.black, fontSize: 18),
    ),
  );
}
