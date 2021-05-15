import 'package:flutter/material.dart';
import 'package:flutter_quiz/challenge/challenge_controller.dart';
import 'package:flutter_quiz/challenge/widget/buttons_footer/buttons_footer_widget.dart';
import 'package:flutter_quiz/challenge/widget/question_indicator/question_indicator.dart';
import 'package:flutter_quiz/challenge/widget/quiz/quiz_widget.dart';
import 'package:flutter_quiz/shared/models/question_model.dart';

class ChallengePageWidget extends StatefulWidget {
  final List<QuestionModel> questions;
  ChallengePageWidget({Key? key, required this.questions}) : super(key: key);

  @override
  _ChallengePageWidgetState createState() => _ChallengePageWidgetState();
}

class _ChallengePageWidgetState extends State<ChallengePageWidget> {
  final controller = ChallengeController();
  final pageController = PageController();

  @override
  void initState() {
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt() + 1;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButton(),
                ValueListenableBuilder(
                  valueListenable: controller.currentPageNotifier,
                  builder: (BuildContext context, dynamic value, _) {
                    return QuestionIndicatorWidget(
                      currentPage: value,
                      size: widget.questions.length,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children:
              widget.questions.map((e) => QuizWidget(question: e)).toList(),
        ),
      ),
      bottomNavigationBar: ButtonsFooterWidget(
        primaryButtonOnTap: () => {},
        secondaryButtonOnTap: () => pageController.nextPage(
            duration: Duration(
              milliseconds: 500,
            ),
            curve: Curves.easeIn),
      ),
    );
  }
}
