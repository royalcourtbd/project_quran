import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/common/back_button.dart';
import 'package:project_quran/data/common/simple_app_bar.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/subjectwise/subject_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BookmarkDetailsPage extends StatelessWidget {
  TabButtonController tabButtonController = Get.put(TabButtonController());

  BookmarkDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: 'Folder Name',
            leading: CustomButton(
              onTap: () => Get.back(),
              svgPath: SvgPath.icArrowForword,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 10.px),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: subjectList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.px, vertical: 5.px),
                        child: Container(
                          height: 64.px,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.px, vertical: 10.px),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.px),
                            color: QuranColors.whiteColor,
                            border: Border.all(
                              color:
                                  const Color(0xff537967).withOpacity(0.12.px),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                subjectList[index].subjectName,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 14.px,
                                    ),
                              ),
                              SizedBox(height: 5.px),
                              Text(
                                'Ayah ${subjectList[index].totalAyat}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: QuranColors.auroMetalSaurus,
                                      fontSize: 12.px,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
