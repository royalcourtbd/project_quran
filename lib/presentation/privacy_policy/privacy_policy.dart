import 'package:flutter/material.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/common/back_button.dart';
import 'package:project_quran/data/common/simple_app_bar.dart';
import 'package:project_quran/data/common/title_and_description_text.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: 'Privacy Policy',
            leading: CustomButton(
              svgPath: SvgPath.icArrowForword,
              onTap: () {},
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 15.px, vertical: 10.px),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: double.maxFinite,
                      padding: EdgeInsets.all(15.px),
                      decoration: BoxDecoration(
                          color: QuranColors.whiteColor,
                          borderRadius: BorderRadius.circular(10.px)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleText(title: '19th September, 2018'),
                          DescriptionText(
                            description:
                                'We started in 2012, At first we were working to make a complete database of hadith, we sucessfully did that and published Al-Hadith Android and iOS Apps. We also launched an website for hadiths (http://ihadis.com/). Next we moved on to work with Quran Tafsir and Translation, we launched an Android Quran App And website. Now we are trying to enhance our exsisting projects and also working on different ideas for different projects that will by the will of Allah(Suhanahu Wa Ta\'ala) benifit the Ummah.So dear brothers and sisters, Keep us in your duas.',
                          ),
                          TitleText(title: 'Collection Of Your Information'),
                          DescriptionText(
                              description:
                                  'We may collect information about you in a variety ways. The information we may collect via the application depends on the content and materials you use, and includes.'),
                          TitleText(title: 'Personal Data'),
                          DescriptionText(
                              description:
                                  'We may collect information about you in a variety ways. The information we may collect via the application depends on the content and materials you use, and includes.')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
