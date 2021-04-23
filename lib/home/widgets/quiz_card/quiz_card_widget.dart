import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator/progress_indicator.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final double percentage;

  const QuizCardWidget({
    Key? key,
    required this.title,
    required this.completed,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(height: 11.0),
          Text(
            title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: 11.0),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  completed,
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 2,
                child: ProgressIndicatorWidget(value: percentage),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
