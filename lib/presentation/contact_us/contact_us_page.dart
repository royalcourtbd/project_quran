import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/common/back_button.dart';
import 'package:project_quran/data/common/simple_app_bar.dart';
import 'package:project_quran/data/common/title_and_description_text.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: 'Contact Us',
            leading: CustomButton(
              svgPath: SvgPath.icArrowForword,
              onTap: () {},
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.px, vertical: 10.px),
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                          //borderRadius: BorderRadius.circular(10.px),
                          ),
                      child: SvgPicture.asset(
                        'assets/images/contact_us_image.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
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
                            title: 'Get In Touch',
                            texColor: QuranColors.outerSpace,
                            fontSize: 24.px,
                          ),
                          DescriptionText(
                            description:
                                'To Contact Us, You can inbox Our Facebook Page or You can mail Us for any kind of query, app features request, error in content etc.',
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(SvgPath.icEmail),
                              SizedBox(width: 13.px),
                              Text(
                                'project.ihadis@gmail.com',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontSize: 14.px),
                              )
                            ],
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
