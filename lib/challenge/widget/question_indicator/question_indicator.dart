import 'package:flutter/material.dart';
import 'package:flutter_quiz/core/app_text_styles.dart';
import 'package:flutter_quiz/shared/widget/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int size;
  const QuestionIndicatorWidget(
      {Key? key, required this.currentPage, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Questao $currentPage",
              style: AppTextStyles.body,
            ),
            Text(
              "de $size",
              style: AppTextStyles.body,
            )
          ]),
          SizedBox(height: 12),
          ProgressIndicatorWidget(
            value: currentPage / size,
          )
        ],
      ),
    );
  }
}
