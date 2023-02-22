import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

InputDecoration defaultInputDecoration({
  required BuildContext context,
  required String hintText,
  String suffixIconPath = "",
  String prefixIconPath = "",
  bool hintBold = false,
}) {
  return InputDecoration(
    border: InputBorder.none,
    // OutlineInputBorder
    enabledBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    // contentPadding: EdgeInsets.only(
    //   left: 12.px,
    //   top: 13.px,
    //   // bottom: 13.px,
    // ),
    focusedBorder: InputBorder.none,

    hintText: hintText,
    hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
          color: QuranColors.outerSpace,
          fontWeight: FontWeight.w400,
          fontSize: 12.px,
          fontFamily: GoogleFonts.roboto().fontFamily,
        ),
    suffixIcon: SizedBox(
      height: 16.px,
      width: 16.px,
      child: SvgPicture.asset(
        suffixIconPath,
        height: 16.px,
        width: 16.px,
        fit: BoxFit.scaleDown,
        colorFilter: buildColorFilterToChangeColor(QuranColors.blueUCLABlue),
      ),
    ),
    prefixIcon: SizedBox(
      height: 16.px,
      width: 16.px,
      child: SvgPicture.asset(
        prefixIconPath,
        height: 16.px,
        width: 16.px,
        fit: BoxFit.scaleDown,
        colorFilter: buildColorFilterToChangeColor(QuranColors.blueUCLABlue),
      ),
    ),
  );
}
