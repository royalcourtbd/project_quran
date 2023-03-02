import 'package:flutter/material.dart';
import 'package:project_quran/presentation/settings/settings_drop_down_option.dart';

import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/settings/settings_card_header.dart';
import 'package:project_quran/presentation/settings/settings_container.dart';

class LanguageSettingsCard extends StatelessWidget {
  final List<String> _language = [
    'English',
    'Bangla',
    'Hindi',
  ];

  LanguageSettingsCard({
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
            title: 'Language Settings',
            svgPath: SvgPath.icContent,
          ),
          //SizedBox(height: 25.px),
          SettingsDropDownOption(
            title: "",
            value: _language,
          ),
        ],
      ),
    );
  }
}
