import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/settings/settings_card_header.dart';
import 'package:project_quran/presentation/settings/settings_container.dart';
import 'package:project_quran/presentation/settings/settings_toggle_option.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class ContentSettingsCard extends StatelessWidget {
  TabButtonController tabButtonController = Get.put(TabButtonController());
  ContentSettingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Column(
        children: [
          Get.currentRoute != '/SettingsPage'
              ? const SettingsCardHeader(
                  title: "View Settings",
                  svgPath: SvgPath.icContent,
                )
              : const SettingsCardHeader(
                  title: "Content Settings",
                  svgPath: SvgPath.icContent,
                ),
          SizedBox(height: 20.px),
          Get.currentRoute == '/SettingsPage'
              ? Obx(() => SettingsToggleOption(
                    title: "Show Chapter",
                    onToggle: (bool toggled) {
                      tabButtonController.toggleChapter();
                    },
                    toggled: tabButtonController.chapterOn.value,
                  ))
              : const SizedBox.shrink(),
          Get.currentRoute == '/SettingsPage'
              ? SizedBox(height: 20.px)
              : const SizedBox.shrink(),
          Obx(() => SettingsToggleOption(
                title: "Show Arabic",
                onToggle: (bool toggled) {
                  tabButtonController.toggleArabic();
                },
                toggled: tabButtonController.arabicOn.value,
              )),
          SizedBox(height: 20.px),
          Get.currentRoute == '/SettingsPage'
              ? Obx(() => SettingsToggleOption(
                    title: "Hadith Action Button",
                    onToggle: (bool toggled) {
                      tabButtonController.toggleOtherInfo();
                    },
                    toggled: tabButtonController.otherInfoOn.value,
                  ))
              : Obx(() => SettingsToggleOption(
                    title: "Show Translation",
                    onToggle: (bool toggled) {
                      tabButtonController.toggleTranslation();
                    },
                    toggled: tabButtonController.translationOn.value,
                  )),
        ],
      ),
    );
  }
}
