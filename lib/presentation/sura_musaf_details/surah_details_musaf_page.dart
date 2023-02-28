import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/common/back_button.dart';
import 'package:project_quran/data/model/surah_model.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/sura_musaf_details/widgets/surah_name_section_musaf.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SurahDetailsMusafPage extends StatelessWidget {
  SurahModel surahModel;
  SurahDetailsMusafPage({super.key, required this.surahModel});

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
                CustomButton(
                  onTap: () => Get.back(),
                  svgPath: SvgPath.icArrowForword,
                ),
                Text(
                  surahModel.surahNameEn,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18.px,
                      ),
                ),
                CustomButton(
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
                  SizedBox(height: 15.px),
                  SurahNameSectionMusaf(surahModel: surahModel),
                  SizedBox(height: 12.px),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.px),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.px, vertical: 10),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(10.px),
                      ),
                      height: 70.px,
                      child: Image.asset(
                        'assets/images/bismillah.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.px),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.px, vertical: 7.px),
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.px, vertical: 15.px),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(10.px),
                      ),
                      child: Wrap(
                        children: [
                          Text(
                            surahModel.listOfAyat
                                .toString()
                                .replaceAll('[', '')
                                .replaceAll(']', ''),
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontFamily: 'KFGQPC',
                              fontSize: 22.px,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        height: 120.px,
        decoration: const BoxDecoration(
          // color: Colors.red,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bottombar.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        alignment: Alignment.bottomCenter,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          unselectedItemColor: const Color(0xff788A95),
          elevation: 0,
          unselectedLabelStyle: TextStyle(
            color: const Color(0xff788A95),
            fontSize: 10.px,
          ),
          selectedLabelStyle: TextStyle(
            color: QuranColors.greenCrayola,
            fontSize: 10.px,
          ),
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(SvgPath.icTranslate), label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(SvgPath.icOpenBook), label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(SvgPath.icPLay), label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(SvgPath.icCategory), label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(SvgPath.icPaste), label: ''),
          ],
        ),
      ),
    );
  }
}
