import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/search/widgets/ayat_list.dart';
import 'package:project_quran/presentation/search/widgets/search_section.dart';
import 'package:project_quran/presentation/search/widgets/single_sura_view_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: QuranColors.whiteColor),
            height: MediaQuery.of(context).padding.top,
          ),
          const SearchBar(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 10.px),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle(
                    text: '50 Results Showing',
                    textColor: const Color(0xff6F767D),
                    fontSize: 12.px,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 15.px),
                  SectionTitle(
                    text: 'Sura',
                    fontSize: 12.px,
                  ),
                  const SingleSuraViewWidget(),
                  SizedBox(height: 10.px),
                  SectionTitle(
                    text: 'Ayah',
                    fontSize: 12.px,
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: ayatList.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      int ayatNumber = index + 1;
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.px, vertical: 10.px),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.px, vertical: 15.px),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(10.px),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '${ayatList[index].surahNameEn} ${ayatList[index].surahNo} : $ayatNumber',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                  SvgPicture.asset(
                                    SvgPath.icMoreHorizontal,
                                    colorFilter: const ColorFilter.mode(
                                      Color(0xff6F767D),
                                      BlendMode.srcATop,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 20.px),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  ayatList[index].ayatAr,
                                  style: TextStyle(
                                    fontFamily: 'KFGQPC',
                                    fontSize: 22.px,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 40.px),
                              Text(
                                ayatList[index].nameOftranslation,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                              ),
                              SizedBox(height: 10.px),
                              Text(
                                ayatList[index].translation,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: const Color(0xff6F767D),
                                        fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  Color textColor;
  double fontSize;
  FontWeight? fontWeight;
  SectionTitle({
    super.key,
    required this.text,
    this.textColor = QuranColors.outerSpace,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.px),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
      ),
    );
  }
}
