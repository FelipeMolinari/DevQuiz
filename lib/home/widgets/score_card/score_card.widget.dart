import 'package:flutter/material.dart';
import 'package:flutter_quiz/core/app_colors.dart';
import 'package:flutter_quiz/core/app_text_styles.dart';
import 'package:flutter_quiz/home/widgets/chart/chart_widget.dart';

class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(25),
        height: 136,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: ChartWidget(),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Vamos começar',
                      style: AppTextStyles.heading,
                    ),
                    Text('Complete os desafios e avance em conhecimento',
                        style: AppTextStyles.body)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}