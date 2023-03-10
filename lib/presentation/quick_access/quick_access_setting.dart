import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/quick_access/widgets/quick_acces_setting_juz_list_widget.dart';
import 'package:project_quran/presentation/quick_access/widgets/quick_access_surah_list_widget.dart';
import 'package:project_quran/presentation/widgets/back_button.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class QuickAccessSetting extends StatelessWidget {
  TabButtonController tabButtonController = Get.put(TabButtonController());
  QuickAccessSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 38.px),
        height: double.infinity,
        width: QuranScreen.width() * 0.8,
        decoration: BoxDecoration(
          color: const Color(0xffF1F4F8),
          border: Border.all(
            width: 4.px,
            color: const Color(0xff353535).withOpacity(0.05),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.px),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.px),
          ),
          child: Column(
            children: [
              SizedBox(height: 20.px),
              const AppBarWidget(),
              SizedBox(height: 15.px),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.px),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 1.5.px, vertical: 1.5.px),
                        height: 45.px,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.px),
                          border: Border.all(
                            width: 1.5.px,
                            color: QuranColors.greenCrayola,
                          ),
                        ),
                        child: Row(
                          children: [
                            QuickAccessButton(
                              index: 0,
                              buttonText: 'Sura',
                              onTap: () {
                                tabButtonController
                                    .quickAccessCurrentIndex.value = 0;
                              },
                            ),
                            SizedBox(width: 4.px),
                            QuickAccessButton(
                              index: 1,
                              buttonText: 'Juz',
                              onTap: () {
                                tabButtonController
                                    .quickAccessCurrentIndex.value = 1;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Obx(() => Column(
                        children: [
                          SizedBox(height: 15.px),
                          tabButtonController.quickAccessCurrentIndex.value == 1
                              ? const QuickAccessSettingJuzListWidget()
                              : const QuickAccseeSurahListWidget(),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      //height: 64.px,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          CustomButton(
            onTap: () {
              Get.back();
            },
            svgPath: SvgPath.icArrowBack,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(),
              child: Text(
                'Quick Access',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 18.px,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuickAccessButton extends StatelessWidget {
  int? index;
  TabButtonController tabButtonController = Get.put(TabButtonController());
  VoidCallback onTap;
  String buttonText;

  QuickAccessButton({
    super.key,
    required this.buttonText,
    this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Obx(() => Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color:
                      tabButtonController.quickAccessCurrentIndex.value == index
                          ? QuranColors.greenCrayola
                          : const Color(0xffF3FBF8),
                  borderRadius:
                      tabButtonController.quickAccessCurrentIndex.value == index
                          ? BorderRadius.circular(6.px)
                          : BorderRadius.zero),
              child: Text(
                buttonText,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 12.px,
                      fontWeight: FontWeight.w700,
                      color:
                          tabButtonController.quickAccessCurrentIndex.value ==
                                  index
                              ? QuranColors.whiteColor
                              : QuranColors.outerSpace,
                    ),
              ),
            )),
      ),
    );
  }
}


//