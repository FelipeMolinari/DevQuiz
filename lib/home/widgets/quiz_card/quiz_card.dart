import 'package:flutter/material.dart';
import 'package:flutter_quiz/core/app_colors.dart';
import 'package:flutter_quiz/core/app_images.dart';
import 'package:flutter_quiz/core/app_text_styles.dart';
import 'package:flutter_quiz/shared/widget/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final int progress;
  final int totalQuestions;
  final VoidCallback onTap;

  const QuizCardWidget({
    Key? key,
    required this.title,
    required this.progress,
    required this.totalQuestions,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(BorderSide(color: AppColors.border))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImages.blocks),
            Text(title, style: AppTextStyles.heading15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: Text("$progress de $totalQuestions",
                        style: AppTextStyles.body11)),
                Expanded(
                    flex: 2,
                    child: ProgressIndicatorWidget(
                      value: progress / totalQuestions,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
