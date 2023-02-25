import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/quick_access/widgets/quick_acces_page_surah_list_widget%20copy.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class QuickAccessPage extends StatelessWidget {
  TabButtonController tabButtonController = Get.put(TabButtonController());
  QuickAccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      appBar: AppBar(
        backgroundColor: const Color(0xffF1F4F8),
        leadingWidth: 86,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 1.px),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffD6E5E1).withOpacity(0.25),
                borderRadius: BorderRadius.circular(10.px),
              ),
              child: SvgPicture.asset(
                SvgPath.icArrowBack,
                colorFilter: const ColorFilter.mode(
                  QuranColors.outerSpace,
                  BlendMode.srcATop,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          'Quick Access',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 18.px,
              ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24..px,
            ),
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
                          SizedBox(
                            width: 4.px,
                          ),
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
            SizedBox(
              height: 15.px,
            ),
            const QuickAccessPageSurahListWidget(),
          ],
        ),
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