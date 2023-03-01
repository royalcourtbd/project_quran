import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/common/back_button.dart';
import 'package:project_quran/data/common/simple_app_bar.dart';
import 'package:project_quran/presentation/memorise/memories_list.dart';
import 'package:project_quran/presentation/settings/mini_settings/mini_settings_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DailyDuaPage extends StatelessWidget {
  const DailyDuaPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      endDrawer: const MiniSettingsDrawer(),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: 'Daily Dua',
            leading: CustomButton(
              svgPath: SvgPath.icArrowForword,
              onTap: () => Get.back(),
            ),
            trailing: Builder(builder: (context) {
              return CustomButton(
                svgPath: SvgPath.icSetting,
                onTap: () {
                  print('drawer');
                  Scaffold.of(context).openEndDrawer();
                },
              );
            }),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 15.px),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: memoriesList.first.ayat.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.px, vertical: 5.px),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.px, vertical: 15.px),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(10.px),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        memoriesList.first.totalSurah.first,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontFamily: GoogleFonts.roboto()
                                                  .fontFamily,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        '1 : 1',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontFamily: GoogleFonts.roboto()
                                                  .fontFamily,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    ],
                                  ),
                                  SvgPicture.asset(SvgPath.icMoreHorizontal)
                                ],
                              ),
                              SizedBox(height: 20.px),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  memoriesList.first.ayat.toString(),
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
                                memoriesList.first.nameOftranslation,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(),
                              ),
                              SizedBox(height: 10.px),
                              Text(
                                memoriesList.first.meaningOfAyat,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
