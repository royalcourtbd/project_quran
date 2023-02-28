import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/common/back_button.dart';
import 'package:project_quran/data/common/simple_app_bar.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/word_by_word/sura_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WordByWordPage extends StatelessWidget {
  const WordByWordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: QuranColors.whiteColor),
            height: MediaQuery.of(context).padding.top,
          ),
          SimpleAppBar(
            appBarTitle: 'surahModel.surahNameEn',
            leading: CustomButton(
              onTap: () => Get.back(),
              svgPath: SvgPath.icArrowForword,
            ),
            trailing: CustomButton(
              onTap: () => Get.back(),
              svgPath: SvgPath.icSetting,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 10.px),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // SizedBox(height: 10.px),

                  Padding(
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.px, vertical: 15.px),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      SvgPath.icShowIndex,
                                    ),
                                    Text(
                                      wordByWordSuraList[0].surahNo.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
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
                                      wordByWordSuraList[0].surahNameEn,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontSize: 18.px,
                                          ),
                                    ),
                                    Text(
                                      '${wordByWordSuraList[0].nameTranslation} \n${wordByWordSuraList[0].ayah} Verse \nNazil: ${wordByWordSuraList[0].revelationType}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            height: 1.6.px,
                                          ),
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
                              wordByWordSuraList[0].revelationType == 'Maccan'
                                  ? SvgPath.icMakkaBig
                                  : SvgPath.icMakkaBig,
                              colorFilter: ColorFilter.mode(
                                Colors.grey.shade500,
                                BlendMode.srcATop,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                      ),
                    ],
                  ),
                  SizedBox(height: 10.px),
                  _singleAyatView(),
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
          //color: Colors.red,
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
    ));
  }

  ListView _singleAyatView() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 5,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        wordByWordSuraList[0]
                            .listOfAyat
                            .toString()
                            .replaceAll('[', '')
                            .replaceAll(']', ''),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontFamily: 'KFGQPC',
                              fontSize: 22.px,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      Text(
                        wordByWordSuraList[0].listOfTranslation.toString(),
                        style: const TextStyle(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.px),
                Text(
                  ' surahModel.nameOftranslation',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                ),
                SizedBox(height: 10.px),
                Text(
                  ' surahModel.listOfTranslation[index]',
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
