import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DescriptionText extends StatelessWidget {
  String description;
  double fontSize;
  DescriptionText({
    super.key,
    required this.description,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          description,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                height: 1.48.px,
                fontSize: fontSize.px,
              ),
        ),
        SizedBox(
          height: 20.px,
        ),
      ],
    );
  }
}

class TitleText extends StatelessWidget {
  String title;
  Color texColor;
  double fontSize;
  TitleText({
    super.key,
    required this.title,
    this.texColor = QuranColors.greenCrayola,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: texColor,
                fontSize: fontSize.px,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
        ),
        SizedBox(height: 10.px),
      ],
    );
  }
}
