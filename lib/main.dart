import 'package:flutter/material.dart';
import 'package:flutter_quiz/core/app_colors.dart';
import 'package:flutter_quiz/core/app_widget.dart';

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
