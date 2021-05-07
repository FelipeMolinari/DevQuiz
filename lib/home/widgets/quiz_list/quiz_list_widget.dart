import 'package:flutter/material.dart';
import 'package:flutter_quiz/home/widgets/quiz_card/quiz_card.dart';

class QuizListWidget extends StatelessWidget {
  const QuizListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          QuizCardWidget(),
          QuizCardWidget(),
          QuizCardWidget(),
          QuizCardWidget()
        ],
      ),
    );
  }
}
