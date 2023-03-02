import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/presentation/settings/settings_drop_down_option.dart';
import 'package:project_quran/presentation/settings/settings_slider_option.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/settings/settings_card_header.dart';
import 'package:project_quran/presentation/settings/settings_container.dart';

class FontSettingsCard extends StatelessWidget {
  final List<String> _script = [
    'Indupak',
    'Uthmani',
  ];
  final List<String> _arabicFonts = [
    'Al Mushaf',
    'Lateef',
    'KFGQ Hafs',
  ];
  FontSettingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SettingsCardHeader(
            title: 'Font Settings',
            svgPath: SvgPath.icT,
          ),
          SizedBox(height: 25.px),
          SettingsSliderOption(
            title: "Arabic Font Size",
            currentValue: 8,
            minValue: 1,
            maxValue: 28,
            onChanged: (value) {},
          ),
          SizedBox(height: 8.px),
          SettingsSliderOption(
            title: "Text Font Size",
            currentValue: 23,
            minValue: 1,
            maxValue: 28,
            onChanged: (value) {},
          ),
          SizedBox(height: 8.px),
          SettingsDropDownOption(
            title: "Script",
            value: _script,
          ),
          SizedBox(height: 16.px),
          SettingsDropDownOption(
            title: "Arabic Font",
            value: _arabicFonts,
          ),
          Get.currentRoute == '/SettingsPage'
              ? const SizedBox.shrink()
              : SizedBox(height: 16.px),
          Get.currentRoute == '/SettingsPage'
              ? const SizedBox.shrink()
              : SettingsDropDownOption(
                  title: "Word by Word",
                  value: _script,
                ),
        ],
      ),
    );
  }
}
