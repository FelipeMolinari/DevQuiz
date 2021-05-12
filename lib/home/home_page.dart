import 'package:flutter/material.dart';
import 'package:flutter_quiz/core/app_colors.dart';
import 'package:flutter_quiz/home/home_state.dart';
import 'package:flutter_quiz/home/widgets/appbar/app_bar.widget.dart';
import 'package:flutter_quiz/home/widgets/levels_list/levels_list_widget.dart';
import 'package:flutter_quiz/home/widgets/quiz_list/quiz_list_widget.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.fetchData();

    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(
          user: controller.user!,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LevelListWidget(),
              QuizListWidget(
                quizzes: controller.quizzes!,
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
          body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
        ),
      ));
    }
  }
}
