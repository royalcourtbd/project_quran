import 'package:flutter/material.dart';

import 'package:project_quran/core/third_party_libs/quran_app_swith_button.dart';

class SettingsToggleOption extends StatelessWidget {
  const SettingsToggleOption({
    super.key,
    required this.title,
    required this.onToggle,
    required this.toggled,
  });

  final String title;
  final ValueChanged<bool> onToggle;
  final bool toggled;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
        ),
        const Spacer(),
        QuranAppSwitchButton(
          toggled: toggled,
          onToggle: onToggle,
        ),
      ],
    );
  }
}
