import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 64.px,
      padding: EdgeInsets.only(left: 15.px),
      decoration: const BoxDecoration(
        color: QuranColors.whiteColor,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              print('object');
              Get.back();
            },
            child: Container(
              height: 40.px,
              width: 40.px,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffD6E5E1).withOpacity(0.25.px),
                borderRadius: BorderRadius.circular(10.px),
              ),
              child: SvgPicture.asset(SvgPath.icArrowForword),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10.px, right: 15.px),
              alignment: Alignment.center,
              //height: 60.px,
              decoration: const BoxDecoration(),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    top: 10.px,
                    bottom: 10.px,
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.px),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: QuranColors.whiteAntiFlash,
                  errorBorder: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.px),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.px),
                    borderSide: BorderSide.none,
                  ),
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  hintText: 'Search Sura Name, Sura No or Juz',
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(14.0.px),
                    child: SvgPicture.asset(
                      SvgPath.icFilter,
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(11.0.px),
                    child: SvgPicture.asset(
                      SvgPath.icSearch,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
