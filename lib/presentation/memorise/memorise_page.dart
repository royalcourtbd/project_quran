import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/data/common/custom_appbar.dart';
import 'package:project_quran/presentation/home/widgets/search_section.dart';
import 'package:project_quran/presentation/memorise/widgets/single_plan_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MemorisePage extends StatelessWidget {
  const MemorisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            appBarTitle: 'Memorization',
            trailing: SvgPicture.asset(SvgPath.icLogout),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 15.px),
                  SearchSection(
                    searchTitel: 'Search Bookmark, Ayat pins, Notes',
                  ),
                  SizedBox(height: 10.px),
                  const SinglePlanWidget(),
                  SizedBox(height: QuranScreen.width() * .3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MemoriesPageTextDecoration extends StatelessWidget {
  final String title;
  const MemoriesPageTextDecoration({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.px),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(),
      ),
    );
  }
}
