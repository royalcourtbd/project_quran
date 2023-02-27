import 'package:flutter/material.dart';
import 'package:project_quran/data/common/custom_appbar.dart';
import 'package:project_quran/presentation/home/widgets/search_section.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SubjectWisePage extends StatelessWidget {
  const SubjectWisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            appBarTitle: 'Subjectwise Ayah',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 12.px,
                  ),
                  SearchSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
