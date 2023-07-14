import 'package:flutter/material.dart';

class ExamCard extends StatelessWidget {
  final String imagePath;
  final Color backgroundColor;
  final Color textColor;
  final String title;
  final VoidCallback onPressed;

  const ExamCard({
    Key? key,
    required this.imagePath,
    required this.backgroundColor,
    required this.textColor,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fill,
          ),
          color: backgroundColor,
        ),
        child: Row(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: onPressed,
                child: Text(
                  title,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
