import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/Screens/Login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 600,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/opening.png"),
                  //fit: BoxFit.fill,
                ),
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(200, 50)),
                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(
                    255, 87, 178, 253)), // Set the desired color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const Text(
                "start",
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 28, 28),
                  fontSize: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
