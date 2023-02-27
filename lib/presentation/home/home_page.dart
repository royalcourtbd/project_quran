import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/common/custom_appbar.dart';
import 'package:project_quran/presentation/home/widgets/dashboard_item.dart';
import 'package:project_quran/presentation/home/widgets/quick_access_surah_section.dart';
import 'package:project_quran/presentation/home/widgets/search_section.dart';
import 'package:project_quran/presentation/home/widgets/surah_list_widget.dart';
import 'package:project_quran/presentation/home/widgets/tab_button.dart';
import 'package:project_quran/presentation/quick_access/quick_access_page.dart';
import 'package:project_quran/presentation/search/search_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  TabButtonController tabButtonController = Get.put(TabButtonController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            appBarTitle: 'Quran Majeed',
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 15.px),
                  SearchSection(),
                  SizedBox(height: 20.px),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.px),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DashboardItem(
                          onTap: () => Get.to(() => QuickAccessPage()),
                          iconPath: SvgPath.icClock,
                          title: 'Last Read',
                          bgColor: const Color(0xffF4F8FF),
                        ),
                        DashboardItem(
                            onTap: () => Get.to(() => const SearchPage()),
                            iconPath: SvgPath.icPlane,
                            title: 'Jump Ayah',
                            bgColor: const Color(0xffF9F5FF)),
                        DashboardItem(
                            onTap: () {},
                            iconPath: SvgPath.icCalendar,
                            title: 'Daily Ayah',
                            bgColor: const Color(0xffFFF5E9)),
                        DashboardItem(
                            onTap: () {},
                            iconPath: SvgPath.icFavorite,
                            title: 'Support Us',
                            bgColor: const Color(0xffFFF2F7)),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.px),
                  const QuickAccessSection(),
                  SizedBox(height: 31.px),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.px),
                    child: Container(
                      height: 40.px,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(5.px),
                        border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 1.5.px),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TabButton(
                            title: 'Sura',
                            index: 0,
                            onTap: () {
                              tabButtonController.tabCurrentIndex.value = 0;
                            },
                          ),
                          SizedBox(width: 0.02.px),
                          TabButton(
                            title: 'Juz',
                            index: 1,
                            onTap: () {
                              tabButtonController.tabCurrentIndex.value = 1;
                            },
                          ),
                          TabButton(
                            title: 'Page',
                            index: 2,
                            onTap: () {
                              tabButtonController.tabCurrentIndex.value = 2;
                            },
                          ),
                          TabButton(
                            title: 'Hizb',
                            index: 3,
                            onTap: () {
                              tabButtonController.tabCurrentIndex.value = 3;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 11.px),
                  const SurahListWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
