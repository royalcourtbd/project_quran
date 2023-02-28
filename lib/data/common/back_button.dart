import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButton extends StatelessWidget {
  String svgPath;
  VoidCallback onTap;
  CustomButton({super.key, required this.svgPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.px,
        width: 40.px,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xffD6E5E1).withOpacity(0.25.px),
          borderRadius: BorderRadius.circular(10.px),
        ),
        child: SvgPicture.asset(svgPath),
      ),
    );
  }
}
