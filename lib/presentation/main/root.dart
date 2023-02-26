import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/home/home_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // List pages = [
  //   const HomePage(),
  //   const BookmarkPage(),
  //   const ShowMemoriesPage(),
  //   const LastReadPage(),
  //   const PublicationsPage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: HomePage(),
          extendBody: true,
      
          bottomNavigationBar: Stack(
            children: [
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                unselectedItemColor: const Color(0xff788A95),
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
                      icon: SvgPicture.asset(SvgPath.icHome), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(SvgPath.icBook),
                      label: 'Subjectwise'),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(SvgPath.icBookmark),
                      label: 'Bookmark'),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(SvgPath.icMemorize),
                      label: 'Memorize'),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(SvgPath.icSetting),
                      label: 'Settings'),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  width: 300,
                  height: 89.px,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
