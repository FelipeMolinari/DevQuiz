import 'package:flutter/material.dart';
import 'package:flutter_quiz/challenge/challenge_page.dart';
import 'package:flutter_quiz/home/widgets/quiz_card/quiz_card.dart';
import 'package:flutter_quiz/shared/models/quiz_model.dart';

class QuizListWidget extends StatelessWidget {
  final List<QuizModel> quizzes;
  const QuizListWidget({Key? key, required this.quizzes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: quizzes
            .map((e) => QuizCardWidget(
                  title: e.title,
                  progress: e.questionAnswered,
                  totalQuestions: e.questions.length,
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChallengePageWidget(
                                  questions: e.questions,
                                )))
                  },
                ))
            .toList(),
      ),
    );
  }
}
