import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextWithHeader extends StatelessWidget {
  String title;
  String description;
  TextWithHeader({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style:
            Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14.px),
        text: title,
        children: [
          TextSpan(
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: 14.px),
            text: description,
          ),
        ],
      ),
    );
  }
}
