import 'package:flutter/material.dart';
import 'package:flutter_quiz/core/app_colors.dart';
import 'package:flutter_quiz/core/app_text_styles.dart';

class AwnserWidget extends StatelessWidget {
  final String content;
  final bool isRight;
  final bool isSelected;
  const AwnserWidget(
      {Key? key,
      required this.content,
      this.isRight = false,
      this.isSelected = false})
      : super(key: key);

  Color get _selectedColorDark => isSelected
      ? isRight
          ? AppColors.darkGreen
          : AppColors.darkRed
      : AppColors.white;

  Color get _selectedBorderColor => isSelected
      ? isRight
          ? AppColors.lightGreen
          : AppColors.lightRed
      : AppColors.border;

  Color get _selectedColorLight => isSelected
      ? isRight
          ? AppColors.lightGreen
          : AppColors.lightRed
      : AppColors.white;

  TextStyle get _selectedTextStyle => isSelected
      ? isRight
          ? AppTextStyles.bodyDarkGreen
          : AppTextStyles.bodyDarkRed
      : AppTextStyles.body;

  IconData get _selectedIcon => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          color: _selectedColorLight,
          borderRadius: BorderRadius.circular(10),
          border:
              Border.fromBorderSide(BorderSide(color: _selectedBorderColor))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              content,
              style: _selectedTextStyle,
            ),
          ),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                color: _selectedColorDark,
                borderRadius: BorderRadius.circular(500),
                border: Border.fromBorderSide(
                    BorderSide(color: _selectedBorderColor))),
            child: isSelected
                ? Icon(
                    _selectedIcon,
                    size: 16,
                    color: Colors.white,
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
