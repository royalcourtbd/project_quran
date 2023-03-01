import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsCardHeader extends StatelessWidget {
  const SettingsCardHeader({
    super.key,
    required this.title,
    required this.svgPath,
  });

  final String title;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          svgPath,
          height: 20.px,
          width: 17.px,
        ),
        SizedBox(width: 8.px),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 14.px,
              ),
        ),
      ],
    );
  }
}
