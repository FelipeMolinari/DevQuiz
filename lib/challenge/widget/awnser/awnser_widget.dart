import 'package:flutter/material.dart';
import 'package:flutter_quiz/core/app_colors.dart';
import 'package:flutter_quiz/core/app_text_styles.dart';
import 'package:flutter_quiz/shared/models/awnser_model.dart';

class AwnserWidget extends StatelessWidget {
  final AwnserModel awnser;
  final bool isSelected;
  final bool disabled;
  final VoidCallback onTap;
  const AwnserWidget({
    Key? key,
    required this.awnser,
    this.isSelected = false,
    this.disabled = false,
    required this.onTap,
  }) : super(key: key);

  Color get _selectedColorDark => isSelected
      ? awnser.isRight
          ? AppColors.darkGreen
          : AppColors.darkRed
      : AppColors.white;

  Color get _selectedBorderColor => isSelected
      ? awnser.isRight
          ? AppColors.lightGreen
          : AppColors.lightRed
      : AppColors.border;

  Color get _selectedColorLight => isSelected
      ? awnser.isRight
          ? AppColors.lightGreen
          : AppColors.lightRed
      : AppColors.white;

  TextStyle get _selectedTextStyle => isSelected
      ? awnser.isRight
          ? AppTextStyles.bodyDarkGreen
          : AppTextStyles.bodyDarkRed
      : AppTextStyles.body;

  IconData get _selectedIcon => awnser.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: disabled,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
              color: _selectedColorLight,
              borderRadius: BorderRadius.circular(10),
              border: Border.fromBorderSide(
                  BorderSide(color: _selectedBorderColor))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  awnser.title,
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
        ),
      ),
    );
  }
}
