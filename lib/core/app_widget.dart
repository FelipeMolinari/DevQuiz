import 'package:flutter/material.dart';
import 'package:flutter_quiz/challenge/challenge_page.dart';

import 'package:flutter_quiz/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevQuiz',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
