import 'package:flutter/material.dart';
import 'package:flutter_quiz/core/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Color textColor;
  final Color borderColor;

  const NextButtonWidget(
      {Key? key,
      required this.label,
      required this.backgroundColor,
      required this.textColor,
      required this.borderColor,
      required this.onPressed})
      : super(key: key);

  NextButtonWidget.primary(
      {required String label, required VoidCallback onPressed})
      : this.backgroundColor = AppColors.darkGreen,
        this.textColor = AppColors.white,
        this.label = label,
        this.borderColor = AppColors.darkGreen,
        this.onPressed = onPressed;

  NextButtonWidget.secondary(
      {required String label, required VoidCallback onPressed})
      : this.backgroundColor = AppColors.white,
        this.textColor = AppColors.grey,
        this.label = label,
        this.borderColor = AppColors.border,
        this.onPressed = onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
        border: Border.all(color: AppColors.border),
      ),
      child: Expanded(
        flex: 1,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            label,
            style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w600, fontSize: 15, color: textColor),
          ),
        ),
      ),
    );
  }
}
