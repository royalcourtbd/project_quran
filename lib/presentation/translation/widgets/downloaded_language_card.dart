import 'package:flutter/material.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/choose_tafsir/widgets/downloaded_header.dart';
import 'package:project_quran/presentation/choose_tafsir/widgets/downloaded_tafsir_list.dart';
import 'package:project_quran/presentation/choose_tafsir/widgets/tafsir_card_container.dart';
import 'package:project_quran/presentation/choose_tafsir/widgets/tafsir_list.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class DownloadedLanguageCard extends StatelessWidget {
  const DownloadedLanguageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TafsirCardContainer(
      child: Column(
        children: [
          DownloadedHeader(
            title: 'Downloaded Languages (${downloadedTafsirList.length})',
            iconPath: SvgPath.icDownArrow,
          ),
          SizedBox(height: 15.px),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: downloadedTafsirList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 7.px),
                child: DownloadedTafsirList(
                  tafsirLanguage: downloadedTafsirList[index].tafsirLanguage,
                  author: downloadedTafsirList[index].author,
                  isActive: downloadedTafsirList[index].isActive,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
