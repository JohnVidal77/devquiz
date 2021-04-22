import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  const QuestionIndicatorWidget({Key? key}) : super(key: key);

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
            Text("Questão 04 de 10", style: AppTextStyles.body),
            SizedBox(
              height: 16,
            ),
            ProgressIndicatorWidget(value: .4)
          ],
        ),
      ),
    );
  }
}
