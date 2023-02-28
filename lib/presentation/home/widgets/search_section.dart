import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/core/util/util.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchSection extends StatelessWidget {
  TabButtonController tabButtonController = Get.put(TabButtonController());
  OverlayEntry? overlayEntry;
  String searchTitel;

  showFilterOverlay(BuildContext context) {
    OverlayState overlayState = Overlay.of(context);

    overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          top: QuranScreen.width() * .47,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.px),
            child: Material(
              child: Container(
                alignment: Alignment.center,
                height: 235.px,
                padding:
                    EdgeInsets.symmetric(horizontal: 15.px, vertical: 15.px),
                decoration: BoxDecoration(
                  //color: Colors.red,
                  color: QuranColors.whiteColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(0, 4),
                      blurRadius: 20,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(6.px),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Filter For Best Result',
                    ),
                    SizedBox(height: 15.px),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SingleRadioItem(
                          title: 'Surah',
                          value: 'surah',
                          groupValue: tabButtonController.selectItem.value,
                          onChanged: (p0) {},
                        ),
                        SingleRadioItem(
                          title: 'Translation',
                          value: 'translation',
                          groupValue: tabButtonController.selectItem.value,
                          onChanged: (p0) {},
                        ),
                        SingleRadioItem(
                          title: 'Tafsir',
                          value: 'tafsir',
                          groupValue: tabButtonController.selectItem.value,
                          onChanged: (p0) {},
                        ),
                        SingleRadioItem(
                          title: 'Ayah',
                          value: 'ayah',
                          groupValue: tabButtonController.selectItem.value,
                          onChanged: (p0) {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20.px),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 12.px),
                      height: QuranScreen.width() * 0.11111111111,
                      decoration: BoxDecoration(
                        color: QuranColors.whiteAntiFlash,
                        borderRadius: BorderRadius.circular(6.px),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Select Category',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                  fontWeight: FontWeight.w400,
                                  fontSize: QuranScreen.width() * 0.03333333333,
                                ),
                          ),
                          SvgPicture.asset(
                            SvgPath.icDownArrow,
                            width: QuranScreen.width() * 0.03,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.px),
                    GestureDetector(
                      onTap: () {
                        overlayEntry!.remove();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 46.px,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: QuranColors.greenCrayola,
                          borderRadius: BorderRadius.circular(6.px),
                        ),
                        child: Text(
                          'Search',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: QuranColors.whiteColor,
                                    fontSize: 14.px,
                                  ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    overlayState.insert(overlayEntry!);
  }

  SearchSection({
    super.key,
    this.searchTitel = 'Search Sura Name, Sura No or Juz',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.px),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 12.px),
        height: QuranScreen.width() * 0.11111111111,
        decoration: BoxDecoration(
          color: QuranColors.whiteAntiFlash,
          borderRadius: BorderRadius.circular(6.px),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  SvgPath.icSearch,
                  width: QuranScreen.width() * 0.04444444444,
                ),
                SizedBox(width: 10.px),
                Text(
                  searchTitel,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontWeight: FontWeight.w400,
                        fontSize: QuranScreen.width() * 0.03333333333,
                      ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                showFilterOverlay(context);
              },
              child: SvgPicture.asset(
                SvgPath.icFilter,
                width: QuranScreen.width() * 0.03611111111,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleRadioItem extends StatelessWidget {
  String value;
  String? groupValue;
  String title;
  void Function(String?)? onChanged;
  SingleRadioItem({
    super.key,
    required this.value,
    this.groupValue,
    this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Radio(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          Text(title)
        ],
      ),
    );
  }
}
