import 'package:flutter/material.dart';
import 'package:flutter_quiz/home/home_repository.dart';
import 'package:flutter_quiz/home/home_state.dart';
import 'package:flutter_quiz/shared/models/quiz_model.dart';
import 'package:flutter_quiz/shared/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.loading);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void fetchData() async {
    state = HomeState.loading;

    user = await repository.getUser();
    quizzes = await repository.getQuizzes();

    state = HomeState.success;
  }
}
