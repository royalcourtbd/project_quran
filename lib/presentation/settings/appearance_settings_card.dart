import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/presentation/settings/settings_drop_down_option.dart';
import 'package:project_quran/presentation/settings/settings_large_option.dart';
import 'package:project_quran/presentation/settings/settings_toggle_option.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/settings/settings_card_header.dart';
import 'package:project_quran/presentation/settings/settings_container.dart';

class AppearanceSettingsCard extends StatelessWidget {
  TabButtonController tabButtonController = Get.put(TabButtonController());

  final List<String> _selectTheme = [
    'Red',
    'Green',
    'Blue',
  ];

  AppearanceSettingsCard({
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
              ? SettingsDropDownOption(
                  title: "Select Theme",
                  value: _selectTheme,
                )
              : const SizedBox.shrink(),
          Get.currentRoute == '/SettingsPage'
              ? SizedBox(height: 20.px)
              : const SizedBox.shrink(),
          Get.currentRoute == '/SettingsPage'
              ? SettingsDropDownOption(
                  title: "Select Style",
                  value: _selectTheme,
                )
              : const SizedBox.shrink(),
          Get.currentRoute == '/SettingsPage'
              ? SizedBox(height: 20.px)
              : const SizedBox.shrink(),
          Get.currentRoute == '/SettingsPage'
              ? Obx(() => SettingsToggleOption(
                    title: "AppBar Radius",
                    onToggle: (bool toggled) {
                      tabButtonController.toggleAppBarRadius();
                    },
                    toggled: tabButtonController.appBarRadiusOn.value,
                  ))
              : const SizedBox.shrink(),
          Get.currentRoute == '/SettingsPage'
              ? SizedBox(height: 20.px)
              : const SizedBox.shrink(),
          Get.currentRoute == '/SettingsPage'
              ? Obx(() => SettingsToggleOption(
                    title: "Always On Display Mode",
                    onToggle: (bool toggled) {
                      tabButtonController.toggleDisplayMode();
                    },
                    toggled: tabButtonController.displayModeOn.value,
                  ))
              : const SizedBox.shrink(),
          Get.currentRoute == '/SettingsPage'
              ? SizedBox(height: 20.px)
              : const SizedBox.shrink(),
          SettingsLargeOption(),
        ],
      ),
    );
  }
}
