import 'package:flutter/material.dart';
import 'package:flutter_quiz/home/widgets/level_button/level_button_widget.dart';

class LevelListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LevelButtonWidget(label: 'Fácil'),
            LevelButtonWidget(label: 'Médio'),
            LevelButtonWidget(label: 'Difícil'),
            LevelButtonWidget(label: 'Perito'),
          ],
        ),
      ),
    );
  }
}
