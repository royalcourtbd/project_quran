import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.px),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 12.px),
        height: QuranScreen.width() * 0.11111111111,
        decoration: BoxDecoration(
          color: QuranColors.whiteAntiFlash,
          borderRadius: BorderRadius.circular(6.px),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  SvgPath.icSearch,
                  width: QuranScreen.width() * 0.04444444444,
                ),
                SizedBox(
                  width: 10.px,
                ),
                Text(
                  'Search Sura Name, Sura No or Juz',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontWeight: FontWeight.w400,
                        fontSize: QuranScreen.width() * 0.03333333333,
                      ),
                ),
              ],
            ),
            SvgPicture.asset(
              SvgPath.icFilter,
              width: QuranScreen.width() * 0.03611111111,
            ),
          ],
        ),
      ),
    );
  }
}
