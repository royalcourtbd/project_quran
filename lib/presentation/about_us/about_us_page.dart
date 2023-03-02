import 'package:flutter/material.dart';
import 'package:project_quran/core/assets/svg_path.dart';

import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/widgets/back_button.dart';
import 'package:project_quran/presentation/widgets/simple_app_bar.dart';
import 'package:project_quran/presentation/widgets/title_and_description_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: 'About Us',
            leading: CustomButton(
              svgPath: SvgPath.icArrowForword,
              onTap: () {},
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.px, vertical: 10.px),
                child: Column(
                  children: [
                    Image.asset('assets/images/what_we_provide.png'),
                    SizedBox(height: 10.px),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.maxFinite,
                      padding: EdgeInsets.all(15.px),
                      decoration: BoxDecoration(
                          color: QuranColors.whiteColor,
                          borderRadius: BorderRadius.circular(10.px)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleText(
                            title:
                                'Assalamu alaikum dear brothers and sisters,',
                            texColor: QuranColors.outerSpace,
                          ),
                          DescriptionText(
                            description:
                                'We are Digital Apps BD, We provide Islamic applications to the Ummah, expecting rewards from Allah Subhana’wa ta’ala alone. Since 2012, we have been working to produce authentic, high quality, user friendly Islamic apps. With Allah\'s grace, we have already launched 2 Android Applications, 2 iOS Applications and 2 Websites, Alhamdulillah! Currently, we are in the process to bring more exciting features to our apps, make corrections where necessary. Alhamdulillah our apps have reached a lot people already.Best of all they are completely FREE and have NO ADS.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
