import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/subjectwise/subject_list.dart';
import 'package:project_quran/presentation/subjectwise/subjectwise_ayat_details_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SingleSubjectViewWidget extends StatelessWidget {
  const SingleSubjectViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: subjectList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 5.px),
          child: GestureDetector(
            onTap: () => Get.to(SubjectWiseAyatDetailspage(
                subjectwiseAtatModel: subjectList[index])),
            child: Container(
              height: 64.px,
              padding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 10.px),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.px),
                border: Border.all(
                  color: const Color(0xff537967).withOpacity(0.12.px),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subjectList[index].subjectName,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14.px,
                        ),
                  ),
                  SizedBox(height: 5.px),
                  Text(
                    'Ayah ${subjectList[index].totalAyat}',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: QuranColors.auroMetalSaurus,
                          fontSize: 12.px,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
