import 'package:dev_quiz/core/app_gradients.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 161.0,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.maxFinite,
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Olá, ",
                              style: AppTextStyles.title,
                              children: [
                                TextSpan(
                                  text: "Bia Coelho",
                                  style: AppTextStyles.titleBold,
                                ),
                              ]),
                        ),
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/29661219?v=4"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(alignment: Alignment(0.0, 1.0), child: ScoreCardWidget()),
              ],
            ),
          ),
        );
}
