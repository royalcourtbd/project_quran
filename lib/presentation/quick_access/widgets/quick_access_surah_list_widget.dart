import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/home/list/all_surah_list.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class QuickAccseeSurahListWidget extends StatelessWidget {
  const QuickAccseeSurahListWidget({
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
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15.px, horizontal: 13.px),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(10.px),
                border: Border.all(
                  color: const Color(0xff537967).withOpacity(0.12.px),
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
                            allSurahList[index].surahNo.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Theme.of(context).primaryColor,
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
                          SizedBox(height: 12.px),
                          Row(
                            children: [
                              Text(
                                '${allSurahList[index].nameTranslation}  |  ${allSurahList[index].ayah} Ayah',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: QuranColors.auroMetalSaurus,
                                      fontSize: 12.px,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              SizedBox(width: 5.px),
                              allSurahList[index].revelationType == 'Maccan'
                                  ? SvgPicture.asset(
                                      SvgPath.icMakka,
                                      height: 15.px,
                                      width: 14.px,
                                    )
                                  : SvgPicture.asset(
                                      SvgPath.icMadina,
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
            ),
          ),
        );
      },
    );
  }
}
