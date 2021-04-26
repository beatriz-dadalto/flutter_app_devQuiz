import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final AnswerModel answer;
  final bool isSelected;
  final bool disabled;
  final ValueChanged<bool> onTap;

  const AnswerWidget({
    Key? key,
    required this.answer,
    this.isSelected = false,
    required this.onTap,
    this.disabled = false,
  }) : super(key: key);

  Color get _selectedColorCorrect =>
      answer.isCorrect ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderCorrect =>
      answer.isCorrect ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardCorrect =>
      answer.isCorrect ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardCorrect =>
      answer.isCorrect ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleCorrect => answer.isCorrect
      ? AppTextStyles.bodyDarkGreen
      : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconCorrect =>
      answer.isCorrect ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: IgnorePointer(
        ignoring: disabled,
        child: GestureDetector(
          onTap: () {
            onTap(answer.isCorrect);
          },
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: isSelected ? _selectedColorCardCorrect : AppColors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.fromBorderSide(BorderSide(
                color: isSelected ? _selectedBorderCardCorrect : AppColors.border,
              )),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    answer.title,
                    style: isSelected
                        ? _selectedTextStyleCorrect
                        : AppTextStyles.body,
                  ),
                ),
                Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    color: isSelected ? _selectedColorCorrect : AppColors.white,
                    borderRadius: BorderRadius.circular(500.0),
                    border: Border.fromBorderSide(BorderSide(
                      color:
                          isSelected ? _selectedBorderCorrect : AppColors.border,
                    )),
                  ),
                  child: isSelected
                      ? Icon(
                          _selectedIconCorrect,
                          size: 16.0,
                          color: Colors.white,
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
