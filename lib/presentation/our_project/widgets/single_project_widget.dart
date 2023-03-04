import 'package:flutter/material.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:project_quran/presentation/our_project/project_list.dart';
import 'package:project_quran/presentation/our_project/widgets/download_button.dart';
import 'package:project_quran/presentation/widgets/title_and_description_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SingleProjectWidget extends StatelessWidget {
  int index;
  SingleProjectWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.maxFinite,
      padding: EdgeInsets.all(15.px),
      decoration: BoxDecoration(
          color: QuranColors.whiteColor,
          borderRadius: BorderRadius.circular(10.px)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                projectList[index].iconPath,
                scale: 3.5.px,
              ),
              SizedBox(width: 15.px),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projectList[index].projectTitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 14.px),
                  ),
                  SizedBox(height: 10.px),
                  Text(
                    projectList[index].team,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.px),
          DescriptionText(
            description: projectList[index].projectDescription,
          ),
          Row(
            children: [
              DownloadButton(
                buttonText: projectList[index].downloadLink!,
                onTap: () {},
              ),
              SizedBox(width: 10.px),
              DownloadButton(
                buttonText: projectList[index].webSiteLink!,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
