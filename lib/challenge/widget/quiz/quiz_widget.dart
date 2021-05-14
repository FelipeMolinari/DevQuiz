import 'package:flutter/material.dart';
import 'package:flutter_quiz/challenge/widget/awnser/awnser_widget.dart';
import 'package:flutter_quiz/core/app_text_styles.dart';
import 'package:flutter_quiz/shared/models/question_model.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;
  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 28,
          ),
          ...question.awnsers.map((e) => AwnserWidget(
              isRight: e.isRight, isSelected: false, content: e.title))
        ],
      ),
    );
  }
}
