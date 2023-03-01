import 'package:flutter/material.dart';

import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/settings/settings_card_header.dart';
import 'package:project_quran/presentation/settings/settings_container.dart';

class TajweedSettingsCard extends StatelessWidget {
  const TajweedSettingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Column(
        children: const [
          SettingsCardHeader(
            title: "Tajweed Rules",
            svgPath: SvgPath.icContent,
          ),
        ],
      ),
    );
  }
}
