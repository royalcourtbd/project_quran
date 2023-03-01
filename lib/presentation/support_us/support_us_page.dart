import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/common/back_button.dart';
import 'package:project_quran/data/common/simple_app_bar.dart';
import 'package:project_quran/data/common/text_with_header.dart';
import 'package:project_quran/data/common/title_and_description_text.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/support_us/widgets/support_button_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SupportUsPage extends StatelessWidget {
  const SupportUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: 'Support Us',
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
                          Text(
                            'Be Part of This',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 20.px,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                          ),
                          TitleText(
                            title: 'Sadaqah Jariyah',
                            fontSize: 20.px,
                          ),
                          DescriptionText(
                            description:
                                'We have plans for many more useful Islamic apps and websites. So if you want all these projects to continue and reach millions of Qbrothers and sisters with the message of Islam, then support us as much as possible every month or once.',
                          ),
                          DescriptionText(
                            description:
                                'Even \$10 dollar per month will take the project a long way, InshaAllah. If you help in this work, it will be added to your account of akhirah as a sadaqa zaria, In sha Allah, the stream of rewards will continue even after your death In sha Allah.',
                          ),
                          TextWithHeader(
                            title: 'Prophet Muhammad (ﷺ) Said: ',
                            description:
                                'He who called (people) to Righteousness, there would be rewards (assured) for him like the rewards of those who adhered to it, without their rewards being diminished in any respect. (Sahih Muslim: 2674)',
                          ),
                          SizedBox(height: 20.px),
                          TextWithHeader(
                            title: 'Note: ',
                            description:
                                'Please be aware that we do not accept Zakah. You can support us by giving Hadiyah (Gift).',
                          ),
                          SizedBox(height: 20.px),
                          SupportButton(
                            title: 'I want to Support',
                            onTap: () {},
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
