import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/Screens/sore_screen.dart';

import '../components/app_bar_components.dart';
import '../data/global.dart';

class Question extends StatefulWidget {
  final Color? themeColor;
  final String? testName;

  const Question({
    Key? key,
    this.themeColor,
    this.testName,
  }) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var list = selectedList(widget.testName);
    return SafeArea(
      child: Scaffold(
        appBar: myAppBar(
          title: widget.testName!,
          barcolor: widget.themeColor!,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: widget.themeColor,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    var question = list[index]['question'];
                    var answers = list[index]['answer'];
                    return Column(
                      children: [
                        Card(
                          margin: const EdgeInsets.all(10.0),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              question,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        for (var answer in answers)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Card(
                              margin: const EdgeInsets.all(10.0),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: ListTile(
                                title: Text(
                                  answer['ans'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onTap: () {
                                  if (index == list.length - 1) {
                                    setState(() {
                                      AppController.score +=
                                          answer['score'] as int;
                                    });
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Score(testName: widget.testName!),
                                      ),
                                    );
                                  } else {
                                    setState(() {
                                      AppController.score +=
                                          answer['score'] as int;
                                    });
                                    pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
