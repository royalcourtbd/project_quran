import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomMenuItemWidget extends StatelessWidget {
  String svgIcon;

  String? buttonName;

  double? fontSize;

  VoidCallback onPressed;

  BottomMenuItemWidget({
    Key? key,
    required this.svgIcon,
    required this.onPressed,
    this.buttonName,
    this.fontSize = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      elevation: 0,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      minWidth: 40.0,
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgIcon,
            // height: QuranScreen.height() * .03,
            // width: QuranScreen.width() * .03,
          ),
          SizedBox(
            height: 2.px,
          ),
          buttonName != null
              ? Text(
                  buttonName!,
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
