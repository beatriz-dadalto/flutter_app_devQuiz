import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_repository.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.EMPTY);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.LOADING;
    user = await repository.getUser();
    state = HomeState.SUCCESS;
  }

  void getQuizzes() async{
    state = HomeState.LOADING;
    quizzes = await repository.getQuizzes();
    state = HomeState.SUCCESS;
  }
}
