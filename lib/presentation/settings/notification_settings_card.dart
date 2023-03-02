import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/presentation/settings/settings_drop_down_option.dart';
import 'package:project_quran/presentation/settings/settings_toggle_option.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/settings/settings_card_header.dart';
import 'package:project_quran/presentation/settings/settings_container.dart';

class NotificationSettingsCard extends StatelessWidget {
    TabButtonController tabButtonController = Get.put(TabButtonController());
  final List<String> value = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  NotificationSettingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Column(
        children: [
          const SettingsCardHeader(
            title: "Notification Settings",
            svgPath: SvgPath.icContent,
          ),
          SizedBox(height: 25.px),
          Obx(() => SettingsToggleOption(
                title: "Daily Notification Update",
                onToggle: (bool toggled) {

                  tabButtonController.toggleNotification();

                },
                toggled: tabButtonController.showNotificaionOn.value,
              )),
          SizedBox(height: 20.px),
          SettingsDropDownOption(
            title: "Time of Notifications",
            value: value,
          ),
        ],
      ),
    );
  }
}
