import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/home/list/all_surah_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuickAccessSettingJuzListWidget extends StatelessWidget {
  const QuickAccessSettingJuzListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: allSurahList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 9.px, right: 9.px, bottom: 10.px),
          child: Container(
            decoration: BoxDecoration(
              color: QuranColors.whiteColor,
              borderRadius: BorderRadius.circular(10.px),
            ),
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              childrenPadding: EdgeInsets.zero,
              controlAffinity: ListTileControlAffinity.platform,
              trailing: const SizedBox.shrink(),
              title: Container(
                padding:
                    EdgeInsets.symmetric(vertical: 15.px, horizontal: 13.px),
                decoration: BoxDecoration(
                  color: QuranColors.whiteColor,
                  borderRadius: BorderRadius.circular(10.px),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Juz ${index + 1}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 14.px,
                                  ),
                            ),
                            SizedBox(height: 8.px),
                            Text(
                              '${allSurahList[index].surahNameEn} - ${allSurahList[index].ayah} Ayah',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: QuranColors.auroMetalSaurus,
                                    fontSize: 12.px,
                                    fontWeight: FontWeight.w400,
                                  ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onExpansionChanged: (value) {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.px),
                side: BorderSide(
                  color: QuranColors.greenCrayola,
                  width: 1.5.px,
                ),
              ),
              children: [
                Container(
                  height: 1.5.px,
                  color: const Color(0xffF1F4F8),
                  width: QuranScreen.width() - 70.px,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.px, horizontal: 13.px),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(8.px)),
                        color: Theme.of(context).cardColor,
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
                                    allSurahList[index].surahNo.toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontSize: 14.px),
                                  ),
                                ],
                              ),
                              SizedBox(width: 14.px),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    allSurahList[index].surahNameEn,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontSize: 14.px,
                                        ),
                                  ),
                                  SizedBox(height: 10.px),
                                  Row(
                                    children: [
                                      Text(
                                        '${allSurahList[index].nameTranslation}  |  ${allSurahList[index].ayah} Ayah',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color:
                                                  QuranColors.auroMetalSaurus,
                                              fontSize: 12.px,
                                              fontWeight: FontWeight.w400,
                                            ),
                                      ),
                                      SizedBox(width: 5.px),
                                      SvgPicture.asset(
                                        allSurahList[index].revelationType,
                                        height: 15.px,
                                        width: 14.px,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
