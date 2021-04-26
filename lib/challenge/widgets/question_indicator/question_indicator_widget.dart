import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int questionLength;
  const QuestionIndicatorWidget(
      {Key? key, required this.currentPage, required this.questionLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              "Questão $currentPage de $questionLength",
              style: AppTextStyles.body,
            ),
            SizedBox(
              height: 16,
            ),
            ProgressIndicatorWidget(value: currentPage / questionLength)
          ],
        ),
      ),
    );
  }
}
