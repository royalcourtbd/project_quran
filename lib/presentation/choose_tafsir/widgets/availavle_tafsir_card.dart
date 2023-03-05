import 'package:flutter/material.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/choose_tafsir/widgets/available_tafsir_list.dart';
import 'package:project_quran/presentation/choose_tafsir/widgets/downloaded_header.dart';
import 'package:project_quran/presentation/choose_tafsir/widgets/tafsir_card_container.dart';
import 'package:project_quran/presentation/choose_tafsir/widgets/tafsir_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AvailableTafsirCard extends StatelessWidget {
  const AvailableTafsirCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TafsirCardContainer(
      child: Column(
        children: [
          DownloadedHeader(
            title: 'Availavle Tafsir (${availableTafsirList.length})',
            iconPath: SvgPath.icDownArrow,
          ),
          SizedBox(height: 15.px),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: availableTafsirList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 7.px),
                child: AvailableTafsirList(
                  tafsirLanguage: availableTafsirList[index].tafsirLanguage,
                  author: availableTafsirList[index].author,
                  isActive: availableTafsirList[index].isActive,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
