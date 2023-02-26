import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/model/surah_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SurahNameSectionMusaf extends StatelessWidget {
  const SurahNameSectionMusaf({
    super.key,
    required this.surahModel,
  });

  final SurahModel surahModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.px),
      child: Container(
        height: 115.px,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10.px),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.px, vertical: 15.px),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        SvgPath.icShowIndex,
                      ),
                      Text(
                        surahModel.surahNo.toString(),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: const Color(0xff17B686),
                              fontSize: 14.px,
                            ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.px),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        surahModel.surahNameEn,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 18.px,
                            ),
                      ),
                      Text(
                        '${surahModel.nameTranslation} \n${surahModel.ayah} Verse \nNazil: ${surahModel.revelationType}',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.px,
                            color: const Color(0xff6F767D),
                            height: 1.6.px),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10.px),
              ),
              child: SvgPicture.asset(
                surahModel.revelationType == 'Maccan'
                    ? SvgPath.icMakkaBig
                    : SvgPath.icMakkaBig,
                colorFilter: ColorFilter.mode(
                  Colors.grey.shade500,
                  BlendMode.srcATop,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
