import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/settings/appearance_settings_card.dart';
import 'package:project_quran/presentation/settings/content_settings_card.dart';
import 'package:project_quran/presentation/settings/font_settings_card.dart';
import 'package:project_quran/presentation/settings/settings_page.dart';
import 'package:project_quran/presentation/settings/tajweed_settings_card.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class MiniSettingsDrawer extends StatelessWidget {
  const MiniSettingsDrawer({Key? key}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const MiniSettingsTopBar(),
            SizedBox(height: 10.px),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FontSettingsCard(),
                    const ContentSettingsCard(),
                    const TajweedSettingsCard(),
                    const AppearanceSettingsCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MiniSettingsTopBar extends StatelessWidget {
  const MiniSettingsTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.px, vertical: 21.px),
      decoration: BoxDecoration(
        color: const Color(0xffF1F4F8),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.px),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: SvgPicture.asset(SvgPath.icArrowBack),
            ),
          ),
          Center(
            child: Text(
              "Quick Tools",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 18.px,
                  ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(const SettingsPage());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: SvgPicture.asset(SvgPath.icSetting),
            ),
          ),
        ],
      ),
    );
  }
}
