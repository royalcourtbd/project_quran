import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/bookmark/bookmark_page.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/contact_us/contact_us_page.dart';
import 'package:project_quran/presentation/home/home_page.dart';
import 'package:project_quran/presentation/memorise/memorise_page.dart';
import 'package:project_quran/presentation/quick_access/quick_access_setting.dart';
import 'package:project_quran/presentation/search/search_page.dart';
import 'package:project_quran/presentation/settings/settings_page.dart';
import 'package:project_quran/presentation/subjectwise/subjectwise_page.dart';
import 'package:project_quran/presentation/widgets/custom_appbar.dart';
import 'package:project_quran/presentation/widgets/drawer_content_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TabButtonController tabButtonController = Get.put(TabButtonController());
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  List pages = [
    //const WordByWordPage(),
    //const NuraniQuranPage(),
    HomePage(),
    // const PrivacyPolicy(),
    //const MemorisePage(),
    const SubjectWisePage(),
    const BookmarkPage(),
    const MemorisePage(),
    const SettingsPage(),
    const ContactUsPage(),
    const SubjectWisePage(),
    const BookmarkPage(),
    const MemorisePage(),
    QuickAccessSetting(),
    const SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          key: scaffoldKey,
          body: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(
                  appBarTitle: 'Quran Majeed',
                  openDrawer: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                ),
                Obx(() => pages[tabButtonController.pageCurrentIndex.value]),
              ],
            ),
          ),
          drawer: Drawer(
            elevation: 0,
            width: QuranScreen.width() * .92,

            backgroundColor: Colors.transparent,
            //backgroundColor: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration:
                      const BoxDecoration(color: QuranColors.whiteColor),
                  height: MediaQuery.of(context).padding.top,
                  width: QuranScreen.width() * 0.73611111111,
                ),
                Stack(
                  children: [
                    Container(
                      width: QuranScreen.width() * 0.73611111111,
                      alignment: Alignment.center,
                      //color: QuranColors.whiteColor,
                      child: Column(
                        children: [
                          SizedBox(
                            width: QuranScreen.width() * 0.73611111111,
                            height: 220.px,
                            child: Image.asset(
                              'assets/images/drawer.png', fit: BoxFit.fill,

                              //scale: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 220.px,
                      child: Align(
                        alignment: const Alignment(0.88, -0.4),
                        child: GestureDetector(
                          onTap: () => Get.back(),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: QuranColors.whiteColor,
                              borderRadius: BorderRadius.circular(50.px),
                            ),
                            child: SvgPicture.asset(
                                'assets/images/arrow_back_2.svg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const DrawerContentWidget()
              ],
            ),
          ),
          extendBody: true,
          bottomNavigationBar: Container(
            height: 130.px,
            decoration: const BoxDecoration(
              // color: Colors.amber,
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
