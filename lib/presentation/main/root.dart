import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/home/home_page.dart';
import 'package:project_quran/presentation/quick_access/quick_access_page.dart';
import 'package:project_quran/presentation/search/search_page.dart';
import 'package:project_quran/presentation/subjectwise/subjectwise_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TabButtonController tabButtonController = Get.put(TabButtonController());
  List pages = [
    HomePage(),
    const SubjectWisePage(),
    QuickAccessPage(),
    const SearchPage(),
    QuickAccessPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Obx(() => pages[tabButtonController.pageCurrentIndex.value]),
          extendBody: true,
          bottomNavigationBar: Container(
            height: 130.px,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bottombar.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            alignment: Alignment.bottomCenter,
            child: Obx(() => BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: tabButtonController.tabCurrentIndex.value,
                  backgroundColor: Colors.transparent,
                  selectedItemColor: QuranColors.greenCrayola,
                  unselectedItemColor: const Color(0xff788A95),
                  onTap: (value) {
                    tabButtonController.pageCurrentIndex.value = value;
                  },
                  elevation: 0,
                  unselectedLabelStyle: TextStyle(
                    color: const Color(0xff788A95),
                    fontSize: 10.px,
                  ),
                  selectedLabelStyle: TextStyle(
                    //color: QuranColors.greenCrayola,
                    fontSize: 10.px,
                  ),
                  items: [
                    _navItem(
                      icon: SvgPath.icHome,
                      label: 'Home',
                      index: 0,
                    ),
                    _navItem(
                      icon: SvgPath.icBook,
                      label: 'Subjectwise',
                      index: 1,
                    ),
                    _navItem(
                      icon: SvgPath.icBookmark,
                      label: 'Bookmark',
                      index: 2,
                    ),
                    _navItem(
                      icon: SvgPath.icMemorize,
                      label: 'Memorize',
                      index: 3,
                    ),
                    _navItem(
                      icon: SvgPath.icSetting,
                      label: 'Setting',
                      index: 4,
                    ),
                  ],
                )),
          ),
        ),
      ],
    );
  }

  BottomNavigationBarItem _navItem({
    required String icon,
    required String label,
    int? index,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
            tabButtonController.pageCurrentIndex.value == index
                ? QuranColors.greenCrayola
                : Colors.grey,
            BlendMode.srcATop),
      ),
      label: label,
    );
  }
}
