import 'dart:convert';

class AnswerModel {
  final String title;
  final bool isCorrect;

  AnswerModel({
    required this.title,
    this.isCorrect = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isCorrect': isCorrect,
    };
  }

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return AnswerModel(
      title: map['title'],
      isCorrect: map['isCorrect'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerModel.fromJson(String source) => AnswerModel.fromMap(json.decode(source));
}
