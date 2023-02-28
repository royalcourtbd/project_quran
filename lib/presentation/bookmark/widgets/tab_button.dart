import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BookmarkPageTabButton extends StatelessWidget {
  TabButtonController tabButtonController = Get.put(TabButtonController());
  final String title;

  VoidCallback? onTap;

  int? index;
  BookmarkPageTabButton(
      {super.key, required this.title, this.onTap, this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Obx(
          () => Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius:
                  tabButtonController.bookmarkPageTabCurrentIndex.value == 1
                      ? BorderRadius.circular(4.px)
                      : BorderRadius.zero,
              color:
                  tabButtonController.bookmarkPageTabCurrentIndex.value == index
                      ? Theme.of(context).primaryColor
                      : QuranColors.whiteAntiFlash,
              border:
                  tabButtonController.bookmarkPageTabCurrentIndex.value == index
                      ? const Border.symmetric(
                          horizontal: BorderSide.none,
                          vertical: BorderSide.none)
                      : Border.all(
                          color: const Color(0xff6F767D).withOpacity(0.1),
                          width: 0.2),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color:
                        tabButtonController.bookmarkPageTabCurrentIndex.value ==
                                index
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
