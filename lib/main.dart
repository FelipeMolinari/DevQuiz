import 'package:flutter/material.dart';
import 'package:flutter_quiz/core/app_widget.dart';

import 'package:flutter_quiz/splash/splash_page.dart';
import 'package:flutter_quiz/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevQuiz',
      debugShowCheckedModeBanner: false,
      home: AppWidget(),
    );
  }
}