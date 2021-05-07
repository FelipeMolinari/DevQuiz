import 'package:flutter/material.dart';
import 'package:flutter_quiz/core/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({Key? key, required this.label})
      : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label)),
        super(key: key);
  @override
  final buttonConfig = {
    "Fácil": {
      "color": AppColors.levelButtonEasy,
      "borderColor": AppColors.levelButtonBorderEasy,
      "textColor": AppColors.levelButtonTextEasy
    },
    "Médio": {
      "color": AppColors.levelButtonMedium,
      "borderColor": AppColors.levelButtonBorderMedium,
      "textColor": AppColors.levelButtonTextMedium
    },
    "Difícil": {
      "color": AppColors.levelButtonHard,
      "borderColor": AppColors.levelButtonBorderHard,
      "textColor": AppColors.levelButtonTextHard
    },
    "Perito": {
      "color": AppColors.levelButtonExpert,
      "borderColor": AppColors.levelButtonBorderExpert,
      "textColor": AppColors.levelButtonTextExpert
    }
  };

  Color get color => buttonConfig[label]!['color']!;
  Color get borderColor => buttonConfig[label]!['borderColor']!;
  Color get textColor => buttonConfig[label]!['textColor']!;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: color,
          border: Border.fromBorderSide(BorderSide(color: borderColor))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
        child: Text('$label',
            style: GoogleFonts.notoSans(color: textColor, fontSize: 13)),
      ),
    );
  }
}
