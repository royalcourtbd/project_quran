import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/common/back_button.dart';
import 'package:project_quran/data/common/simple_app_bar.dart';
import 'package:project_quran/data/model/memories_model.dart';
import 'package:project_quran/presentation/home/list/all_surah_list.dart';
import 'package:project_quran/presentation/memorise/memorise_sura_details_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MemoriseDetailsPage extends StatelessWidget {
  MemoriesModel memoriesModel;
  MemoriseDetailsPage({super.key, required this.memoriesModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: memoriesModel.nameOfPlan,
            leading: CustomButton(
              svgPath: SvgPath.icArrowForword,
              onTap: () => Get.back(),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 15.px),
                  ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: memoriesModel.totalSurah.length,
                    itemBuilder: (context, index) {
                      int suraIndex = index + 1;
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.px, vertical: 5.px),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(
                              () => MemoriseSurahDetailsPage(
                                memoriesModel: memoriesModel,
                                index: index,
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.px, horizontal: 13.px),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(10.px),
                              border: Border.all(
                                color: const Color(0xff537967)
                                    .withOpacity(0.12.px),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SvgPicture.asset(SvgPath.icSurahIndex),
                                        Text(
                                          suraIndex.toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontSize: 14.px),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 14.px),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          memoriesModel.totalSurah[index],
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                fontSize: 14.px,
                                              ),
                                        ),
                                        SizedBox(height: 5.px),
                                        Text(
                                          'Cmpleted Ayah : 2',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  allSurahList[index].surahNameAr,
                                  style: TextStyle(
                                    fontFamily: 'SurahName',
                                    fontSize: 20.px,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )
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
