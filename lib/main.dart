import 'package:dev_quiz/core/app_widget.dart';
import 'package:dev_quiz/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevQuiz',
      home: HomePage(),
    );
  }
}