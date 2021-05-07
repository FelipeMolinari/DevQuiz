import 'package:flutter_quiz/core/app_images.dart';
import 'package:flutter_quiz/home/home_state.dart';
import 'package:flutter_quiz/shared/models/awnser_model.dart';
import 'package:flutter_quiz/shared/models/question_model.dart';
import 'package:flutter_quiz/shared/models/quiz_model.dart';
import 'package:flutter_quiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.loading;
  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: 'Felipe Molinariu',
      photoUrl: 'https://avatars.githubusercontent.com/u/44385529?v=4',
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
          title: 'NLW 5 Flutter',
          questions: [
            QuestionModel(title: 'O que esta rolando na NLW 5?', awnsers: [
              AwnserModel(title: 'Flutter'),
              AwnserModel(title: 'Elixir'),
              AwnserModel(title: 'ReactJs'),
              AwnserModel(title: 'Todas Acima', isRight: true),
            ])
          ],
          level: Level.facil,
          image: AppImages.blocks)
    ];
  }
}
