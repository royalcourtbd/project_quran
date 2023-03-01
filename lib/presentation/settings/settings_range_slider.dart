import 'package:flutter/material.dart';
import 'package:project_quran/core/third_party_libs/advanced_range_slider.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class SettingsRangeSlider extends StatelessWidget {
  const SettingsRangeSlider({
    super.key,
    required this.currentValue,
    required this.maxValue,
    required this.onChanged,
    this.minValue = 0,
  });

  final int currentValue;
  final int maxValue;
  final int minValue;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return AdvancedRangeSlider(
      touchSize: 6,
      onDragCompleted: (currentValue, _, __) => onChanged(currentValue),
      min: 0,
      max: maxValue.toDouble(),
      values: [currentValue.toDouble()],
      handler: FlutterSliderHandler(
        decoration: const BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Container(
          height: 11.px,
          width: 10.px,
          decoration: BoxDecoration(
            color: themeData.primaryColor,
            shape: BoxShape.circle,
          ),
        ),
      ),
      trackBar: FlutterSliderTrackBar(
        inactiveTrackBarHeight: 5.px,
        activeTrackBarHeight: 5.px,
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(20.px),
          color: themeData.primaryColor.withAlpha(40),
        ),
        activeTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(20.px),
          color: themeData.primaryColor,
        ),
      ),
      tooltip: FlutterSliderTooltip(
        format: (value) {
          return value.toString().replaceAll(".0", "");
        },
        textStyle: TextStyle(
          color: themeData.primaryColor,
          fontSize: 14.px,
          fontWeight: FontWeight.w600,
        ),
        boxStyle: FlutterSliderTooltipBox(
          decoration: BoxDecoration(
            color: themeData.cardColor,
            borderRadius: BorderRadius.circular(8.px),
            boxShadow: [
              BoxShadow(
                color: themeData.primaryColor.withAlpha(40),
                blurRadius: 5.px,
                spreadRadius: 1.px,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
