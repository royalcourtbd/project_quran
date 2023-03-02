import 'package:flutter/material.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/home/widgets/search_section.dart';
import 'package:project_quran/presentation/subjectwise/widgets/single_subject_view_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SubjectWisePage extends StatelessWidget {
  const SubjectWisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: double.maxFinite,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12.px),
            SearchSection(),
            Padding(
              padding: EdgeInsets.only(left: 15.px, top: 24.px, bottom: 12.px),
              child: Container(
                height: 36.px,
                width: 36.px,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: QuranColors.greenCrayola,
                  borderRadius: BorderRadius.circular(5.px),
                ),
                child: Text(
                  'A',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: QuranColors.whiteColor,
                      ),
                ),
              ),
            ),
            const SingleSubjectViewWidget(),
            Padding(
              padding: EdgeInsets.only(left: 15.px, top: 24.px),
              child: Container(
                height: 36.px,
                width: 36.px,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: QuranColors.greenCrayola,
                  borderRadius: BorderRadius.circular(5.px),
                ),
                child: Text(
                  'B',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: QuranColors.whiteColor,
                      ),
                ),
              ),
            ),
            SizedBox(height: QuranScreen.width() * .3),
          ],
        ),
      ),
    );
  }
}
