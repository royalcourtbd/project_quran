import 'package:flutter/material.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SimpleAppBar extends StatelessWidget {
  String? appBarTitle;
  Widget? leading;
  Widget? trailing;
  Widget? action;
  SimpleAppBar({
    super.key,
    this.appBarTitle,
    this.leading,
    this.trailing,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(color: QuranColors.whiteColor),
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          alignment: Alignment.center,
          height: 64.px,
          padding: EdgeInsets.symmetric(horizontal: 15.px),
          decoration: const BoxDecoration(
            color: QuranColors.whiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leading != null ? leading! : const SizedBox.shrink(),
              Text(
                appBarTitle!,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 18.px,
                    ),
              ),
              Row(
                children: [
                  action != null ? action! : const SizedBox.shrink(),
                  SizedBox(
                    width: 20.px,
                  ),
                  trailing != null ? trailing! : const SizedBox.shrink(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
