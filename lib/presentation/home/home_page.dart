import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
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
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 120.px,
                child:
                    SvgPicture.asset('assets/images/bg.svg', fit: BoxFit.cover),
              ),
              Positioned(
                bottom: 12.px,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.px),
                  child: Row(
                    children: [
                      SvgPicture.asset(SvgPath.icMenu),
                      SizedBox(width: 16.px),
                      Text(
                        'Quran Majeed',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: QuranScreen.width() * 0.05,
                            ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 15.px,
                  ),
                  const SearchSection(),
                  SizedBox(height: 20.px),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.px),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        DashboardItem(
                          iconPath: SvgPath.icClock,
                          title: 'Last Read',
                          bgColor: Color(0xffF4F8FF),
                        ),
                        DashboardItem(
                            iconPath: SvgPath.icPlane,
                            title: 'Jump Ayah',
                            bgColor: Color(0xffF9F5FF)),
                        DashboardItem(
                            iconPath: SvgPath.icCalendar,
                            title: 'Daily Ayah',
                            bgColor: Color(0xffFFF5E9)),
                        DashboardItem(
                            iconPath: SvgPath.icFavorite,
                            title: 'Support Us',
                            bgColor: Color(0xffFFF2F7)),
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
                              tabButtonController.currentIndex.value = 0;
                              Get.to(() => QuickAccessPage());
                            },
                          ),
                          SizedBox(width: 0.02.px),
                          TabButton(
                            title: 'Juz',
                            index: 1,
                            onTap: () {
                              tabButtonController.currentIndex.value = 1;
                              Get.to(() => const SearchPage());
                            },
                          ),
                          TabButton(
                            title: 'Page',
                            index: 2,
                            onTap: () {
                              tabButtonController.currentIndex.value = 2;
                            },
                          ),
                          TabButton(
                            title: 'Hizb',
                            index: 3,
                            onTap: () {
                              tabButtonController.currentIndex.value = 3;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11.px,
                  ),
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
