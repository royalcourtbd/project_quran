import 'package:flutter/material.dart';
import 'package:project_quran/core/assets/svg_path.dart';

import 'package:project_quran/presentation/widgets/back_button.dart';
import 'package:project_quran/presentation/widgets/simple_app_bar.dart';
import 'package:project_quran/presentation/our_project/project_list.dart';
import 'package:project_quran/presentation/our_project/widgets/single_project_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OurProjectPage extends StatelessWidget {
  const OurProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: Column(
        children: [
          SimpleAppBar(
            appBarTitle: 'Our Project',
            leading: CustomButton(
              svgPath: SvgPath.icArrowForword,
              onTap: () {},
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 15.px, vertical: 15.px),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: projectList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.px),
                          child: SingleProjectWidget(index: index),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 50.px),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
