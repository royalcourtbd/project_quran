import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class DownloadedLanguageHeader extends StatelessWidget {
  String title;
  String iconPath;
  DownloadedLanguageHeader({
    super.key,
    required this.title,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14.px),
        ),
        SvgPicture.asset(iconPath)
      ],
    );
  }
}
