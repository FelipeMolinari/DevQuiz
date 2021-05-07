import 'package:flutter/material.dart';
import 'package:flutter_quiz/challenge/widget/awnser/awnser_widget.dart';
import 'package:flutter_quiz/core/app_text_styles.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 28,
          ),
          AwnserWidget(
              content:
                  'Possibilita a criacao de aplicativos compilados Nativamente.'),
          AwnserWidget(
              isRight: false,
              isSelected: true,
              content:
                  'Possibilita a criacao de aplicativos compilados Nativamente.'),
          AwnserWidget(
              content:
                  'Possibilita a criacao de aplicativos compilados Nativamente.'),
          AwnserWidget(
              content:
                  'Possibilita a criacao de aplicativos compilados Nativamente.'),
        ],
      ),
    );
  }
}
