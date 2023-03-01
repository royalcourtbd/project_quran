import 'package:flutter/material.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SupportButton extends StatelessWidget {
  VoidCallback onTap;
  String title;
  SupportButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52.px,
        alignment: Alignment.center,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(5.px),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: QuranColors.whiteColor,
              ),
        ),
      ),
    );
  }
}
