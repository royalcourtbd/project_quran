import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/presentation/bookmark/bookmark_details_page.dart';
import 'package:project_quran/presentation/bookmark/bookmark_list.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SingleAyatWidget extends StatelessWidget {
  const SingleAyatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: bookmarkList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 5.px, horizontal: 15.px),
          child: GestureDetector(
            onTap: () => Get.to(BookmarkDetailsPage()),
            child: Container(
              height: 68.px,
              padding: EdgeInsets.symmetric(horizontal: 14.px),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                border: Border.all(
                    color: const Color(0xff537967).withOpacity(0.12)),
                borderRadius: BorderRadius.circular(10.px),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 44.px,
                        width: 44.px,
                        child: SvgPicture.asset(bookmarkList[index].iconPath),
                      ),
                      SizedBox(width: 15.px),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bookmarkList[index].title,
                            style: TextStyle(
                              fontSize: 12.px,
                            ),
                          ),
                          SizedBox(height: 4.px),
                          Text(
                            bookmarkList[index].subTitle,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.px,
                              color: const Color(0xff6F767D),
                              fontFamily: GoogleFonts.roboto().fontFamily,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      _customIcon(iconPath: SvgPath.icUpload),
                      _customIcon(iconPath: bookmarkList[index].optionIconPath),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Container _customIcon({required String iconPath}) {
    return Container(
      alignment: Alignment.centerRight,
      color: Colors.transparent,
      width: 24.px,
      child: SvgPicture.asset(
        iconPath,
        colorFilter: const ColorFilter.mode(
          QuranColors.blackCoral,
          BlendMode.srcATop,
        ),
      ),
    );
  }
}
