import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/widgets/back_button.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/settings/appearance_settings_card.dart';
import 'package:project_quran/presentation/settings/content_settings_card.dart';
import 'package:project_quran/presentation/settings/font_settings_card.dart';
import 'package:project_quran/presentation/settings/genaral_settings_card.dart';
import 'package:project_quran/presentation/settings/language_settings_card.dart';
import 'package:project_quran/presentation/settings/notification_settings_card.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 6.px),
          LanguageSettingsCard(),
          GeneralSettingsCard(),
          AppearanceSettingsCard(),
          ContentSettingsCard(),
          FontSettingsCard(),
          NotificationSettingsCard(),
          SizedBox(height: 70.px),
        ],
      ),
    );
  }

  AppBar _buildSettingsAppBar(ThemeData themeData) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: themeData.cardColor,
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const AppBarBackButton(color: QuranColors.blackCharcoal),

            CustomButton(
                svgPath: SvgPath.icArrowForword, onTap: () => Get.back()),

            Text(
              'Settings',
              style: TextStyle(
                color: QuranColors.blackCharcoal,
                fontSize: 16.px,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 20.px),
          ]),
    );
  }
}
