import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class DrawerContentWidget extends StatelessWidget {
  const DrawerContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        color: QuranColors.whiteColor,
        height: double.maxFinite,
        width: QuranScreen.width() * 0.73611111111,
        child: Column(
          children: [
            DrawerHeadLine(
              headingTitle: 'Main Menu',
            ),
            SizedBox(height: 12.px),
            DrawerContent(
              contentTitle: 'Jump to Verse',
              iconPath: SvgPath.icShare1,
              onTap: () {},
            ),
            DrawerContent(
              contentTitle: 'Hafezi Quran',
              iconPath: SvgPath.icQuran,
              onTap: () {},
            ),
            DrawerContent(
              contentTitle: 'Nurani Quran',
              iconPath: SvgPath.icQuran,
              onTap: () {},
            ),
            DrawerContent(
              contentTitle: 'Explore By Subjectwise',
              iconPath: SvgPath.icCategory1,
              onTap: () {},
            ),
            DrawerContent(
              contentTitle: 'Settings',
              iconPath: SvgPath.icSetting2,
              onTap: () {},
            ),
            DrawerContent(
              contentTitle: 'Be Part of Sadaqa Jariah',
              iconPath: SvgPath.icDonate,
              onTap: () {},
            ),
            SizedBox(height: 12.px),
            DrawerHeadLine(
              headingTitle: 'Other\'s',
            ),
            DrawerContent(
              contentTitle: 'Notification',
              iconPath: SvgPath.icNotification,
              onTap: () {},
            ),
            DrawerContent(
              contentTitle: 'Thanks & Credits',
              iconPath: SvgPath.icFavorite2,
              onTap: () {},
            ),
            DrawerContent(
              contentTitle: 'Contact Us',
              iconPath: SvgPath.icMessage,
              onTap: () {},
            ),
            DrawerContent(
              contentTitle: 'About Us',
              iconPath: SvgPath.icAbout,
              onTap: () {},
            ),
            DrawerContent(
              contentTitle: 'Share App',
              iconPath: SvgPath.icShare2,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerContent extends StatelessWidget {
  String contentTitle;
  String iconPath;
  VoidCallback onTap;

  DrawerContent({
    super.key,
    required this.contentTitle,
    required this.onTap,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              SvgPicture.asset(iconPath),
              SizedBox(width: 12.px),
              Text(
                contentTitle,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 14.px,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.px),
      ],
    );
  }
}

class DrawerHeadLine extends StatelessWidget {
  String headingTitle;
  DrawerHeadLine({
    super.key,
    required this.headingTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headingTitle,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        SizedBox(height: 7.px),
        const Divider(
          color: QuranColors.auroMetalSaurus,
        ),
      ],
    );
  }
}
