import 'package:flutter/material.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/home/list/quick_access_surah_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuickAccessSection extends StatelessWidget {
  const QuickAccessSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.px),
          child: Text(
            'Quick Access',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: QuranScreen.width() * 0.03888888888),
          ),
        ),
        SizedBox(height: 12.px),
        Padding(
          padding: EdgeInsets.only(left: 15.px),
          child: Container(
            alignment: Alignment.centerLeft,
            height: 61.px,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: quickAccessSurahList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 7.px),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: QuranScreen.width() * 0.03333333333,
                        vertical: 10.px),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.px),
                      color: QuranColors.whiteAntiFlash,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          quickAccessSurahList[index].surahName,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize:
                                      QuranScreen.width() * 0.03333333333),
                        ),
                        SizedBox(
                          height: 5.px,
                        ),
                        Text(
                          'Ayah-${quickAccessSurahList[index].ayah}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: QuranScreen.width() * 0.025,
                                  fontWeight: FontWeight.w400,
                                  color: QuranColors.auroMetalSaurus),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
