import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/common/back_button.dart';
import 'package:project_quran/data/model/surah_model.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/surah_details/widgets/surah_name_section.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SurahDetailsPage extends StatelessWidget {
  SurahModel surahModel;

  SurahDetailsPage({super.key, required this.surahModel});

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
          Container(
            alignment: Alignment.center,
            height: 64.px,
            padding: EdgeInsets.symmetric(horizontal: 15.px),
            decoration: const BoxDecoration(
              color: QuranColors.whiteColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(
                  onTap: () => Get.back(),
                  svgPath: SvgPath.icArrowForword,
                ),
                Text(
                  surahModel.surahNameEn,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18.px,
                      ),
                ),
                CustomBackButton(
                  onTap: () {},
                  svgPath: SvgPath.icSetting,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 10.px),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SurahNameSection(surahModel: surahModel),
                  SizedBox(height: 15.px),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.px),
                        width: double.maxFinite,
                        height: 50.px,
                        child: SvgPicture.asset(
                          SvgPath.icPageNo,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        'Page : 01',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: QuranColors.whiteColor,
                            ),
                      )
                    ],
                  ),
                  SizedBox(height: 5.px),
                  _singleAyatView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListView _singleAyatView() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: surahModel.listOfAyat.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        int ayatNumber = index + 1;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 7.px),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 15.px),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(10.px),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ayatNumber == 1
                            ? SvgPicture.asset(SvgPath.icPin)
                            : const SizedBox.shrink(),
                        ayatNumber == 1
                            ? SizedBox(width: 15.px)
                            : const SizedBox.shrink(),
                        Text(
                          ayatNumber.toString(),
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      SvgPath.icMoreHorizontal,
                      colorFilter: const ColorFilter.mode(
                        Color(0xff6F767D),
                        BlendMode.srcATop,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.px),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    surahModel.listOfAyat[index].toString(),
                    style: TextStyle(
                      fontFamily: 'KFGQPC',
                      fontSize: 22.px,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 40.px),
                Text(
                  surahModel.nameOftranslation,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                ),
                SizedBox(height: 10.px),
                Text(
                  surahModel.listOfTranslation[index],
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color(0xff6F767D),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
