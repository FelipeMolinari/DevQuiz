import 'package:flutter/material.dart';
import 'package:flutter_quiz/challenge/widget/awnser/awnser_widget.dart';
import 'package:flutter_quiz/challenge/widget/buttons_footer/buttons_footer_widget.dart';
import 'package:flutter_quiz/challenge/widget/next_button/next_button_widget.dart';
import 'package:flutter_quiz/core/app_text_styles.dart';
import 'package:flutter_quiz/shared/models/awnser_model.dart';
import 'package:flutter_quiz/shared/models/question_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final VoidCallback onNextPage;

  const QuizWidget({Key? key, required this.question, required this.onNextPage})
      : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AwnserModel awnser(int index) => widget.question.awnsers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            Text(
              widget.question.title,
              style: AppTextStyles.heading,
            ),
            SizedBox(
              height: 28,
            ),
            for (var i = 0; i < widget.question.awnsers.length; i++)
              AwnserWidget(
                awnser: awnser(i),
                isSelected: indexSelected == i,
                disabled: indexSelected != -1,
                onTap: () {
                  indexSelected = i;
                  setState(() {});
                },
              ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          indexSelected != -1
              ? NextButtonWidget.primary(
                  label: 'Próximo', onPressed: widget.onNextPage)
              : NextButtonWidget.secondary(
                  label: 'Pular', onPressed: widget.onNextPage)
        ]),
      ]),
    );
  }
}
