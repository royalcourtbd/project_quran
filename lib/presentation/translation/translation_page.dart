import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/translation/widgets/availavle_language_card.dart';
import 'package:project_quran/presentation/translation/widgets/downloaded_language_card.dart';

import 'package:project_quran/presentation/widgets/back_button.dart';
import 'package:project_quran/presentation/widgets/simple_app_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TranslationPage extends StatelessWidget {
  const TranslationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: 'Choose Translation',
            leading: CustomButton(
              svgPath: SvgPath.icArrowForword,
              onTap: () => Get.back(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.px, horizontal: 15.px),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        TranslationSearchField(
                          hintText: 'Search Language',
                        ),
                        SizedBox(height: 10.px),
                        const DownloadedLanguageCard(),
                        SizedBox(height: 10.px),
                        const AvailableLanguageCard(),
                        SizedBox(height: QuranScreen.width() * .15),
                      ],
                    ),
                  ),
                  Positioned(
                    top: QuranScreen.height() * 0.8,
                    left: 10.px,
                    right: 10.px,
                    child: Container(
                      height: 45.px,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.px),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Download Selected Language',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: QuranColors.whiteColor,
                                  fontSize: 14.px,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          SizedBox(width: 12.px),
                          SvgPicture.asset(
                            SvgPath.icDownload2,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TranslationSearchField extends StatelessWidget {
  String hintText;
  TranslationSearchField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          top: 10.px,
          bottom: 10.px,
        ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.px),
          borderSide: BorderSide(
            color: const Color(0xffA9AFB5).withOpacity(.50.px),
            width: 1.5,
          ),
        ),
        fillColor: QuranColors.whiteAntiFlash,
        errorBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.px),
          borderSide: BorderSide(
            color: const Color(0xffA9AFB5).withOpacity(.50.px),
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.px),
          borderSide: BorderSide(
            color: const Color(0xffA9AFB5).withOpacity(.50.px),
            width: 1.5,
          ),
        ),
        disabledBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: const Color(0xff3D4953),
            ),
        prefixIcon: Padding(
          padding: EdgeInsets.all(13.0.px),
          child: SvgPicture.asset(
            SvgPath.icSearch,
          ),
        ),
      ),
    );
  }
}



//assets\images\quran_page.png
