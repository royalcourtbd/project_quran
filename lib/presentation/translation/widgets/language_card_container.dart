import 'package:flutter/material.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class LanguageCardContainer extends StatelessWidget {
  Widget child;
  LanguageCardContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.px),
        decoration: BoxDecoration(
          color: QuranColors.whiteColor,
          borderRadius: BorderRadius.circular(
            8.px,
          ),
        ),
        child: child);
  }
}
