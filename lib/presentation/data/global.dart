import 'package:flutter/material.dart';

import 'data_info.dart';

class AppController {
  static final TextEditingController usernametextcontroller =
      TextEditingController();
  static int score = 0;
}

List selectedList(testName) {
  switch (testName) {
    case "Sports Test":
      {
        return sporttest;
      }
    case "History Test":
      {
        return historytest;
      }
    case "Science Test":
      {
        return sciencetest;
      }
    default:
      {
        return sporttest;
      }
  }
}
