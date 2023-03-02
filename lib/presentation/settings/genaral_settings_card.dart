import 'package:flutter/material.dart';
import 'package:project_quran/presentation/settings/settings_drop_down_option.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/settings/settings_card_header.dart';
import 'package:project_quran/presentation/settings/settings_container.dart';

class GeneralSettingsCard extends StatelessWidget {
  final List<String> _script = [
    'Indupak',
    'Uthmani',
  ];
  final List<String> _arabicFonts = [
    'Al Mushaf',
    'Lateef',
    'KFGQ Hafs',
  ];
  GeneralSettingsCard({
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
            title: 'General Settings',
            svgPath: SvgPath.icContent,
          ),
          SizedBox(height: 25.px),
          SettingsDropDownOption(
            title: "Translation",
            value: _arabicFonts,
          ),
          SizedBox(height: 16.px),
          SettingsDropDownOption(
            title: "Word by Word Language",
            value: _arabicFonts,
          ),
          SizedBox(height: 16.px),
          SettingsDropDownOption(
            title: "Audio Manager",
            value: _arabicFonts,
          ),
        ],
      ),
    );
  }
}
