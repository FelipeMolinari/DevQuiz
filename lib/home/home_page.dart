import 'package:flutter/material.dart';
import 'package:flutter_quiz/home/widgets/appbar/app_bar.widget.dart';
import 'package:flutter_quiz/home/widgets/levels_list/levels_list_widget.dart';
import 'package:flutter_quiz/home/widgets/quiz_list/quiz_list_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [LevelListWidget(), QuizListWidget()],
        ),
      ),
    );
  }
}
