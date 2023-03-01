import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/presentation/settings/settings_large_option.dart';
import 'package:project_quran/presentation/settings/settings_toggle_option.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/settings/settings_card_header.dart';
import 'package:project_quran/presentation/settings/settings_container.dart';

class AppearanceSettingsCard extends StatelessWidget {
  const AppearanceSettingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Column(
        children: [
          const SettingsCardHeader(
            title: "Appearance",
            svgPath: SvgPath.icColor,
          ),
          SizedBox(height: 25.px),
          Get.currentRoute == '/SettingsPage'
              ? SettingsToggleOption(
                  title: "Always On Display Mode",
                  onToggle: (bool toggled) {},
                  toggled: true,
                )
              : const SizedBox.shrink(),
          Get.currentRoute == '/SettingsPage'
              ? SizedBox(height: 20.px)
              : const SizedBox.shrink(),
          const SettingsLargeOption(),
        ],
      ),
    );
  }
}
