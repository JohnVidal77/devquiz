import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title, style: AppTextStyles.heading),
            SizedBox(
              height: 24,
            ),
            AnswerWidget(
              title: "Kit de desenvolvimento de interface de usuário",
            ),
            AnswerWidget(
              isSelected: true,
              isRight: true,
              title: "Kit de desenvolvimento de interface de usuário",
            )
          ],
        ),
      ),
    );
  }
}
