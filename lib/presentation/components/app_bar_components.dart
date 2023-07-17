import 'package:flutter/material.dart';

AppBar myAppBar({
  required String title,
  required Color barcolor,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: barcolor,
    title: Text(title),
    actions: [
      Container(
        width: 40,
        padding: const EdgeInsets.only(right: 10),
        child: Image.asset(
          'images/logo-question.png',
        ),
      ),
    ],
  );
}
