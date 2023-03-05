import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class DownloadedLanguageList extends StatelessWidget {
  String tafsirLanguage;
  String author;
  bool isActive;
  DownloadedLanguageList({
    super.key,
    required this.tafsirLanguage,
    required this.author,
    this.isActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 15.px,
              width: 15.px,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isActive == true
                    ? Theme.of(context).primaryColor
                    : Colors.transparent,
                border: Border.all(
                  color: const Color(0xffA9AFB5).withOpacity(.5.px),
                ),
                borderRadius: BorderRadius.circular(2.px),
              ),
              child: isActive == true
                  ? SvgPicture.asset(SvgPath.icCheckSign)
                  : const SizedBox.shrink(),
            ),
            SizedBox(width: 20.px),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tafsirLanguage,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                ),
                SizedBox(height: 8.px),
                Text(
                  author,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(),
                ),
              ],
            ),
          ],
        ),
        isActive == true
            ? Container(
                padding: EdgeInsets.all(3.px),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.px),
                  color: const Color(0xff1DBE8E).withOpacity(0.25.px),
                ),
                child: Text(
                  'Active',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 10.px,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor),
                ),
              )
            : SvgPicture.asset(SvgPath.icDelete),
      ],
    );
  }
}
