import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/quick_access/quick_access_setting.dart';

import 'package:project_quran/presentation/widgets/back_button.dart';
import 'package:project_quran/presentation/widgets/simple_app_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NuraniQuranPage extends StatelessWidget {
  const NuraniQuranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: QuickAccessSetting(),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: 'Nurani Quran',
            leading: CustomButton(
              svgPath: SvgPath.icArrowForword,
              onTap: () => Get.back(),
            ),
            action: CustomButton(
              bgColor: const Color.fromARGB(0, 255, 255, 255),
              svgPath: SvgPath.icBookmark2,
              onTap: () => Get.back(),
            ),
            trailing: Builder(
              builder: (context) {
                return CustomButton(
                  svgPath: SvgPath.icMenu2,
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  SvgPath.icQuranPage,
                  height: QuranScreen.height() - 120.px,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}



//assets\images\quran_page.png