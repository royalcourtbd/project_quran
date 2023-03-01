import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DownloadButton extends StatelessWidget {
  String buttonText;
  Color bgButton;
  Color textColor;
  VoidCallback onTap;
  DownloadButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.bgButton = QuranColors.greenCrayola,
    this.textColor = QuranColors.greenCrayola,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 15.px),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.px),
            color: bgButton.withOpacity(0.10),
          ),
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.inter().fontFamily,
                  color: textColor,
                ),
          ),
        ),
      ),
    );
  }
}
