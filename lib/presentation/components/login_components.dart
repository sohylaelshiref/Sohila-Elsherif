import 'package:flutter/material.dart';

Widget buildTextField({
  required String hintText,
  bool obscureText = false,
  required IconData icon,
  IconData? iconvis,
  required TextEditingController textEditingController,
  required String? Function(String?) validator,
}) {
  return SizedBox(
    width: 300,
    child: TextFormField(
      obscureText: obscureText,
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon),
        suffixIcon: Icon(iconvis),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 23, 149, 233),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 23, 149, 233),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      validator: validator,
    ),
  );
}

Widget buildBackgroundImage(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.96,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/quiz-login.jpg"),
        fit: BoxFit.fill,
      ),
      color: Colors.white,
    ),
  );
}
