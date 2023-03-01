import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsContainer extends StatelessWidget {
  const SettingsContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 10.px,
        vertical: 5.px,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15.px,
        vertical: 15.px,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.px),
      ),
      child: child,
    );
  }
}
