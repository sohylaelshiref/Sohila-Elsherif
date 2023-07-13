import 'package:flutter/material.dart';

AppBar myAppBar({
  required String title,
  required Color barcolor,
}) {
  return AppBar(
    backgroundColor: barcolor,
    title: Row(
      children: [
        Text(title),
        const Padding(
          padding: EdgeInsets.all(34.0),
          child: Text(
            '1/10',
          ),
        ),
      ],
    ),
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
