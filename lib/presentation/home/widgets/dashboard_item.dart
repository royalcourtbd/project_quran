import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DashboardItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final Color bgColor;
  const DashboardItem({
    super.key,
    required this.iconPath,
    required this.title,
    this.bgColor = Colors.white24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: QuranScreen.width() / 4.7,
      height: QuranScreen.width() / 5,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 9.px, vertical: 10.px),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.px),
        color: bgColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            height: QuranScreen.width() * 0.06666666666,
            width: QuranScreen.width() * 0.06666666666,
          ),
          SizedBox(height: 12.px),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: QuranScreen.width() * 0.029,
                ),
          ),
        ],
      ),
    );
  }
}
