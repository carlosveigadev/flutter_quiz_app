import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  const LevelButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            border: Border.fromBorderSide(
                BorderSide(color: AppColors.levelButtonBorderFacil)),
            color: AppColors.levelButtonFacil),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
          child: Text(
            "Easy",
            style: GoogleFonts.notoSans(
              color: AppColors.levelButtonTextFacil,
              fontSize: 13,
            ),
          ),
        ));
  }
}
