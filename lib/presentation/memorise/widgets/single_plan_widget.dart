import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/memorise/memories_list.dart';
import 'package:project_quran/presentation/memorise/memorise_details_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SinglePlanWidget extends StatelessWidget {
  const SinglePlanWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: memoriesList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 5.px, horizontal: 15.px),
          child: GestureDetector(
            onTap: () => Get.to(
              MemoriseDetailsPage(memoriesModel: memoriesList[index]),
            ),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(15.px),
              decoration: BoxDecoration(
                color: QuranColors.whiteColor,
                borderRadius: BorderRadius.circular(10.px),
                border: Border.all(
                  color: QuranColors.hookersGreen.withOpacity(0.12),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(SvgPath.icDocument),
                          SizedBox(width: 10.px),
                          Text(
                            memoriesList[index].nameOfPlan,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 14.px),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        color: Colors.transparent,
                        width: 24.px,
                        child: SvgPicture.asset(
                          memoriesList[index].optionIconPath,
                          colorFilter: ColorFilter.mode(
                            QuranColors.auroMetalSaurus.withOpacity(.3),
                            BlendMode.srcATop,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15.px),
                  MemoriesPageTextDecoration(
                    title:
                        'Total Surah: ${memoriesList[index].totalSurah.length}',
                  ),
                  SizedBox(height: 4.px),
                  MemoriesPageTextDecoration(
                    title:
                        'Remaining Days: ${memoriesList[index].remainingDays}',
                  ),
                  SizedBox(height: 4.px),
                  MemoriesPageTextDecoration(
                    title:
                        'Completed Hadith: ${memoriesList[index].completedAyah}',
                  ),
                  SizedBox(height: 15.px),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withOpacity(.3),
                          borderRadius: BorderRadius.circular(12)),
                      height: 7.px,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(12)),
                          width: QuranScreen.width() *
                              double.parse(
                                  memoriesList[index].completed.toString()) /
                              100,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.px),
                  Align(
                    alignment: Alignment.centerRight,
                    child: MemoriesPageTextDecoration(
                      title: '${memoriesList[index].completed}% completed',
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
