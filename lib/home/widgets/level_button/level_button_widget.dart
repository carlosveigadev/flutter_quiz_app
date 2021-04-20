import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({
    Key? key,
    required this.label,
  })   : assert(["Easy", "Medium", "Hard", "Extreme"].contains(label)),
        super(key: key);

  final config = {
    "Medium": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "fontColor": AppColors.levelButtonTextMedio,
    },
    "Easy": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "fontColor": AppColors.levelButtonTextFacil,
    },
    "Hard": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "fontColor": AppColors.levelButtonTextDificil,
    },
    "Extreme": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito,
    },
  };

  Color get color => config[label]!["color"]!;
  Color get borderColor => config[label]!["borderColor"]!;
  Color get fontColor => config[label]!["fontColor"]!;

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
            label,
            style: GoogleFonts.notoSans(
              color: AppColors.levelButtonTextFacil,
              fontSize: 13,
            ),
          ),
        ));
  }
}
