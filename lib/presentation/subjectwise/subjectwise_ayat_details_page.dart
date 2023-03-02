import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/widgets/back_button.dart';
import 'package:project_quran/presentation/widgets/simple_app_bar.dart';
import 'package:project_quran/data/model/subjectwise_ayat_model.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/settings/mini_settings/mini_settings_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SubjectWiseAyatDetailspage extends StatelessWidget {
  SubjectwiseAtatModel subjectwiseAtatModel;
  SubjectWiseAyatDetailspage({super.key, required this.subjectwiseAtatModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      endDrawer: const MiniSettingsDrawer(),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: 'Subjectwise Ayah',
            leading: CustomButton(
              onTap: () => Get.back(),
              svgPath: SvgPath.icArrowForword,
            ),
            trailing: Builder(
              builder: (context) {
                return CustomButton(
                  svgPath: SvgPath.icSetting,
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 12.px),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 10.px),
              height: 64.px,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.px),
                color: QuranColors.whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Subject : ',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: QuranColors.greenCrayola,
                              fontSize: 14.px,
                            ),
                      ),
                      Text(
                        subjectwiseAtatModel.subjectName,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 14.px,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.px),
                  Text(
                    'Ayah ${subjectwiseAtatModel.totalAyat}',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 12.px,
                          color: QuranColors.auroMetalSaurus,
                          fontWeight: FontWeight.w400,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: subjectwiseAtatModel.ayat.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.px, vertical: 5.px),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.px, vertical: 15.px),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(10.px),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${subjectwiseAtatModel.suraName} ${subjectwiseAtatModel.suraNumber} : ${subjectwiseAtatModel.ayatNumber}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          SvgPicture.asset(
                            SvgPath.icMoreHorizontal,
                            colorFilter: const ColorFilter.mode(
                              Color(0xff6F767D),
                              BlendMode.srcATop,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.px),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          subjectwiseAtatModel.ayat[index],
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'KFGQPC',
                            fontSize: 22.px,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 40.px),
                      Text(
                        subjectwiseAtatModel.nameOftranslation,
                        style:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(),
                      ),
                      SizedBox(height: 10.px),
                      Text(
                        subjectwiseAtatModel.meaningOfAyat,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: const Color(0xff6F767D),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
