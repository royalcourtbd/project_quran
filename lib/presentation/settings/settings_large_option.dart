import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:project_quran/core/assets/svg_path.dart';

class SettingsLargeOption extends StatelessWidget {
  TabButtonController tabButtonController = Get.put(TabButtonController());
  SettingsLargeOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(left: 28.px),
      padding: EdgeInsets.all(5.px),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.px),
        color: QuranColors.whiteAntiFlash,
      ),
      child: Row(
        children: [
          Obx(() => ThemeToggleItem(
                title: "White",
                svgPath: SvgPath.icSun,
                isSelected: tabButtonController.nightModeOn.value == false,
                onToggle: (p0) => tabButtonController.toggleNightMode(),
              )),
          SizedBox(width: 6.px),
          Obx(() => ThemeToggleItem(
                title: "Night",
                svgPath: SvgPath.icMoon,
                isSelected: tabButtonController.nightModeOn.value == true,
                onToggle: (p0) => tabButtonController.toggleNightMode(),
              )),
        ],
      ),
    );
  }
}

class ThemeToggleItem extends StatelessWidget {
  const ThemeToggleItem({
    super.key,
    required this.title,
    required this.svgPath,
    required this.isSelected,
    required this.onToggle,
  });

  final String title;
  final String svgPath;
  final bool isSelected;
  final void Function(bool) onToggle;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Expanded(
      child: GestureDetector(
        onTap: () {
          onToggle(false);
          print('object');
          print(onToggle);
        },
        child: Container(
          padding: EdgeInsets.all(10.px),
          decoration: BoxDecoration(
            color: isSelected ? themeData.primaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(4.px),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: isSelected
                          ? Colors.white
                          : themeData.textTheme.bodyMedium?.color,
                    ),
              ),
              SizedBox(width: 5.px),
              SvgPicture.asset(
                svgPath,
                colorFilter: buildColorFilterToChangeColor(isSelected
                    ? Colors.white
                    : themeData.textTheme.bodyMedium?.color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
