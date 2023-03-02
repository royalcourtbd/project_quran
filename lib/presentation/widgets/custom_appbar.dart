import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomAppBar extends StatelessWidget {
  String appBarTitle;
  final Widget? trailing;
  VoidCallback? openDrawer;
  CustomAppBar({
    super.key,
    required this.appBarTitle,
    this.openDrawer,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 120.px,
          child: SvgPicture.asset(SvgPath.icAppBar, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 12.px,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.px),
            child: SizedBox(
              width: QuranScreen.width() - 30.px,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: openDrawer,
                        child: SvgPicture.asset(SvgPath.icMenu),
                      ),
                      SizedBox(width: 16.px),
                      Text(
                        appBarTitle,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: QuranScreen.width() * 0.05,
                            ),
                      ),
                    ],
                  ),
                  trailing != null ? trailing! : const SizedBox.shrink(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
