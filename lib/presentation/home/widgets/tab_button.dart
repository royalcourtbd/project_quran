import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TabButton extends StatelessWidget {
  TabButtonController tabButtonController = Get.put(TabButtonController());
  final String title;

  VoidCallback? onTap;

  int? index;
  TabButton({super.key, required this.title, this.onTap, this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Obx(
          () => Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: tabButtonController.tabCurrentIndex.value == index
                  ? BorderRadius.circular(4.px)
                  : tabButtonController.tabCurrentIndex.value == 0 ||
                          tabButtonController.tabCurrentIndex.value == 3
                      ? BorderRadius.zero
                      : BorderRadius.horizontal(
                          left: Radius.circular(5.px),
                          right: Radius.circular(5.px)),
              color: tabButtonController.tabCurrentIndex.value == index
                  ? Theme.of(context).primaryColor
                  : QuranColors.whiteAntiFlash,
              border: tabButtonController.tabCurrentIndex.value == index
                  ? const Border.symmetric(
                      horizontal: BorderSide.none, vertical: BorderSide.none)
                  : Border.all(
                      color: const Color(0xff6F767D).withOpacity(0.1),
                      width: 0.2),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: tabButtonController.tabCurrentIndex.value == index
                        ? Theme.of(context).cardColor
                        : QuranColors.outerSpace,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
