import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/core/assets/svg_path.dart';

import 'package:project_quran/data/model/memories_model.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/settings/mini_settings/mini_settings_drawer.dart';
import 'package:project_quran/presentation/widgets/back_button.dart';
import 'package:project_quran/presentation/widgets/simple_app_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MemoriseSurahDetailsPage extends StatelessWidget {
  MemoriesModel memoriesModel;
  int index;
  MemoriseSurahDetailsPage(
      {super.key, required this.memoriesModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      endDrawer: const MiniSettingsDrawer(),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle:
                '${memoriesModel.nameOfPlan} : ${memoriesModel.totalSurah[index]}',
            leading: CustomButton(
              svgPath: SvgPath.icArrowForword,
              onTap: () => Get.back(),
            ),
            trailing: Builder(
              builder: (context) {
                return CustomButton(
                  svgPath: SvgPath.icSetting,
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 15.px),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: memoriesModel.ayat.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.px, vertical: 5.px),
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
                                    '2',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        SvgPath.icFlag,
                                      ),
                                      SizedBox(width: 24.px),
                                      SvgPicture.asset(
                                        SvgPath.icDoubleCheck,
                                        colorFilter: const ColorFilter.mode(
                                          QuranColors.outerSpace,
                                          BlendMode.srcATop,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.px),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  memoriesModel.ayat[index],
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontFamily: 'KFGQPC',
                                    fontSize: 22.px,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 40.px),
                              Text(
                                memoriesModel.nameOftranslation,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                              ),
                              SizedBox(height: 10.px),
                              MemoriesPageTextDecoration(
                                  title: memoriesModel.meaningOfAyat),
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

class MemoriesPageTextDecoration extends StatelessWidget {
  final String title;
  const MemoriesPageTextDecoration({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.px),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(),
      ),
    );
  }
}
