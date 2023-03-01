import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/presentation/settings/settings_range_slider.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsSliderOption extends StatelessWidget {
  const SettingsSliderOption({
    super.key,
    required this.title,
    required this.currentValue,
    required this.minValue,
    required this.maxValue,
    required this.onChanged,
  });

  final String title;
  final int currentValue;
  final int minValue;
  final int maxValue;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
        ),
        SizedBox(
          height: 40.px,
          child: Row(
            children: [
              Expanded(
                child: SettingsRangeSlider(
                  currentValue: currentValue,
                  maxValue: maxValue,
                  minValue: minValue,
                  onChanged: onChanged,
                ),
              ),
              Text(
                currentValue.toString(),
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                      color: const Color(0xffA9AFB5),
                      fontSize: 11.px,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
