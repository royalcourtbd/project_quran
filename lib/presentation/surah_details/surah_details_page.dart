import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/widgets/back_button.dart';
import 'package:project_quran/presentation/widgets/bottom_menu_item.dart';
import 'package:project_quran/presentation/widgets/simple_app_bar.dart';
import 'package:project_quran/data/model/surah_model.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/settings/mini_settings/mini_settings_drawer.dart';


import 'package:project_quran/presentation/surah_details/widgets/surah_name_section.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SurahDetailsPage extends StatelessWidget {
  SurahModel surahModel;

  SurahDetailsPage({super.key, required this.surahModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      endDrawer: const MiniSettingsDrawer(),
      body: Stack(
        children: [
          Column(
            children: [
              SimpleAppBar(
                appBarTitle: surahModel.surahNameEn,
                leading: CustomButton(
                  onTap: () => Get.back(),
                  svgPath: SvgPath.icArrowForword,
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: QuranColors.whiteColor,
                                ),
                          )
                        ],
                      ),
                      SizedBox(height: 5.px),
                      _singleAyatView(),
                      SizedBox(height: 65.px),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
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
              child: Container(
                padding: EdgeInsets.all(5.px),
                alignment: Alignment.center,
                height: 56.px,
                width: double.maxFinite,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomMenuItemWidget(
                      svgIcon: SvgPath.icTranslate,
                      onPressed: () {},
                    ),
                    BottomMenuItemWidget(
                      svgIcon: SvgPath.icOpenBook,
                      onPressed: () {},
                    ),
                    BottomMenuItemWidget(
                      svgIcon: SvgPath.icPLay,
                      onPressed: () {},
                    ),
                    BottomMenuItemWidget(
                      svgIcon: SvgPath.icCategory,
                      onPressed: () {},
                    ),
                    BottomMenuItemWidget(
                      svgIcon: SvgPath.icPaste,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      extendBody: true,
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
