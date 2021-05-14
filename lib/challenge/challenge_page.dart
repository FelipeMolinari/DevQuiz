import 'package:flutter/material.dart';
import 'package:flutter_quiz/challenge/widget/buttons_footer/buttons_footer_widget.dart';
import 'package:flutter_quiz/challenge/widget/question_indicator/question_indicator.dart';
import 'package:flutter_quiz/challenge/widget/quiz/quiz_widget.dart';
import 'package:flutter_quiz/shared/models/question_model.dart';

class ChallengePageWidget extends StatefulWidget {
  final List<QuestionModel> questions;
  ChallengePageWidget({Key? key, required this.questions}) : super(key: key);

  @override
  _ChallengePageWidgetState createState() => _ChallengePageWidgetState();
}

class _ChallengePageWidgetState extends State<ChallengePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButton(),
                QuestionIndicatorWidget(),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: QuizWidget(
                question: widget.questions[0],
              ),
            ),
            ButtonsFooterWidget(),
          ],
        ),
      ),
    );
  }
}
