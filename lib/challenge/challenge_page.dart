import 'package:flutter/material.dart';
import 'package:flutter_quiz/challenge/widget/buttons_footer/buttons_footer_widget.dart';
import 'package:flutter_quiz/challenge/widget/question_indicator/question_indicator.dart';
import 'package:flutter_quiz/challenge/widget/quiz/quiz_widget.dart';

class ChallengePageWidget extends StatefulWidget {
  ChallengePageWidget({Key? key}) : super(key: key);

  @override
  _ChallengePageWidgetState createState() => _ChallengePageWidgetState();
}

class _ChallengePageWidgetState extends State<ChallengePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(top: true, child: QuestionIndicatorWidget()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: QuizWidget(
              title: 'O que o Flutter faz em sua totalidade?',
            ),
          ),
          ButtonsFooterWidget(),
        ],
      ),
    );
  }
}
