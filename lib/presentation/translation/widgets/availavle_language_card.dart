import 'package:flutter/material.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/choose_tafsir/widgets/downloaded_header.dart';
import 'package:project_quran/presentation/choose_tafsir/widgets/tafsir_card_container.dart';
import 'package:project_quran/presentation/translation/widgets/available_language_list.dart';
import 'package:project_quran/presentation/translation/widgets/language_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AvailableLanguageCard extends StatelessWidget {
  const AvailableLanguageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TafsirCardContainer(
      child: Column(
        children: [
          DownloadedHeader(
            title: 'Availavle Language (${availableLanguageList.length})',
            iconPath: SvgPath.icDownArrow,
          ),
          SizedBox(height: 15.px),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: availableLanguageList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 7.px),
                child: AvailableLanguageList(
                  language: availableLanguageList[index].tafsirLanguage,
                  wbw: availableLanguageList[index].author,
                  isActive: availableLanguageList[index].isActive,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
