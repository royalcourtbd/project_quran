import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class AvailableTafsirList extends StatelessWidget {
  String tafsirLanguage;
  String author;
  bool isActive;
  AvailableTafsirList({
    super.key,
    required this.tafsirLanguage,
    required this.author,
    this.isActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.px, vertical: 10.px),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.px),
        color: isActive == true
            ? Theme.of(context).primaryColor.withOpacity(0.07.px)
            : Colors.transparent,
      ),
      child: Row(
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
                    color: isActive == false
                        ? const Color(0xff1DBE8E).withOpacity(0.25.px)
                        : Colors.transparent,
                  ),
                  child: isActive == true
                      ? const SizedBox.shrink()
                      : SvgPicture.asset(SvgPath.icDownload),
                )
              : SvgPicture.asset(SvgPath.icDownload),
        ],
      ),
    );
  }
}
