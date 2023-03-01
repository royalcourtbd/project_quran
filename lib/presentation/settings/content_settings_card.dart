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
              ? SettingsToggleOption(
                  title: "Show Chapter",
                  onToggle: (bool toggled) {},
                  toggled: false,
                )
              : const SizedBox.shrink(),
          SizedBox(height: 20.px),
          SettingsToggleOption(
            title: "Show Arabic",
            onToggle: (bool toggled) {},
            toggled: false,
          ),
          SizedBox(height: 20.px),
          Get.currentRoute == '/SettingsPage'
              ? SettingsToggleOption(
                  title: "Hadith Action Button",
                  onToggle: (bool toggled) {},
                  toggled: true,
                )
              : Obx(() => SettingsToggleOption(
                    title: "Show Translation",
                    onToggle: (bool toggled) {
                      tabButtonController.toggle();
                    },
                    toggled: tabButtonController.on.value,
                  )),
        ],
      ),
    );
  }
}
