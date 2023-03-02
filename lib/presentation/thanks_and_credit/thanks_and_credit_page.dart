import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/widgets/back_button.dart';
import 'package:project_quran/presentation/widgets/simple_app_bar.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/widgets/title_and_description_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThanksAndCreditPage extends StatelessWidget {
  const ThanksAndCreditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: 'Thanks & Credit',
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
                    SizedBox(
                      width: double.maxFinite,
                      child: SvgPicture.asset(
                        SvgPath.icThanks,
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
                            title: 'Special Thank to All Of Our -',
                            fontSize: 18.px,
                            texColor: QuranColors.outerSpace,
                          ),
                          BulletText(
                            text:
                                'Honourable Donors For their Financial Support.',
                          ),
                          BulletText(
                            text:
                                'Volunteers For their Technical and Others Support.',
                          ),
                          BulletText(
                            text: 'Workers For their hard work for projects.',
                          ),
                          BulletText(
                            text:
                                'Bangla Hadith for Tafsir Ahsanul Bayan Database.',
                          ),
                          BulletText(
                            text:
                                'IERF and Shaikh Shaidullah Khan Madani for Tafsir Fathul Mazid.',
                          ),
                          SizedBox(
                            height: 10.px,
                          ),
                          TitleText(
                            title: 'Greentech Apps Foundation For- ',
                            fontSize: 14.px,
                            texColor: QuranColors.outerSpace,
                          ),
                          BulletText(
                            text:
                                'Honourable Donors For their Financial Support.',
                          ),
                          BulletText(
                            text:
                                'Volunteers For their Technical and Others Support.',
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

class BulletText extends StatelessWidget {
  String text;
  BulletText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.px),
      child: Text(
        '• $text',
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 14,
              height: 1.5,
            ),
      ),
    );
  }
}
