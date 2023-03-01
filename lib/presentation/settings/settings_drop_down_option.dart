import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:project_quran/core/assets/svg_path.dart';

class SettingsDropDownOption extends StatelessWidget {
  String? selectedValue;
  SettingsDropDownOption({
    super.key,
    required this.title,
    required this.value,
    this.onChanged,
  });

  final String title;
  final List<String> value;

  final void Function()? onChanged;

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
        SizedBox(height: 12.px),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xfff2f2f2),
            borderRadius: BorderRadius.circular(6.px),
          ),
          width: double.infinity,
          padding: EdgeInsets.all(10.px),
          height: 38.px,
          child: DropdownButton(
            borderRadius: BorderRadius.circular(6.px),
            //elevation: 5,
            underline: const SizedBox.shrink(),
            isExpanded: true,
            icon: SvgPicture.asset(SvgPath.icDownArrow),
            dropdownColor: Colors.white,
            hint: Text(
              value.first,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
              ),
            ),
            value: selectedValue,
            items: value
                .map((item) => DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            onChanged: (String? value) {},
          ),
        ),
      ],
    );
  }
}
