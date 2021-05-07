import 'package:flutter/material.dart';
import 'package:flutter_quiz/core/app_text_styles.dart';
import 'package:flutter_quiz/shared/widget/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  const QuestionIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Questao 04",
                    style: AppTextStyles.body,
                  ),
                  Text(
                    "de 10",
                    style: AppTextStyles.body,
                  )
                ]),
          ),
          ProgressIndicatorWidget(
            value: 0.33,
          )
        ],
      ),
    );
  }
}
