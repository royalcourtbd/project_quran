import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_quran/buisness_logic/controllers/tab_button_controller.dart';

import 'package:project_quran/presentation/bookmark/widgets/single_bookmark_widget.dart';
import 'package:project_quran/presentation/bookmark/widgets/tab_button.dart';
import 'package:project_quran/presentation/home/widgets/search_section.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 15.px),
            SearchSection(
              searchTitel: 'Search Bookmark, Ayat pins, Notes',
            ),
            SizedBox(height: 10.px),
            BookmarkPageTabbutton(),
            const SingleBookmarkItemWidget(),
            SizedBox(height: 70.px),
          ],
        ),
      ),
    );
  }
}

class BookmarkPageTabbutton extends StatelessWidget {
  TabButtonController tabButtonController = Get.put(TabButtonController());
  BookmarkPageTabbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 15.px),
      child: Container(
        height: 40.px,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          //color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(5.px),
          border:
              Border.all(color: Theme.of(context).primaryColor, width: 1.5.px),
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BookmarkPageTabButton(
              title: 'Bookmark',
              index: 0,
              onTap: () {
                tabButtonController.bookmarkPageTabCurrentIndex.value = 0;
              },
            ),
            SizedBox(width: 0.02.px),
            BookmarkPageTabButton(
              title: 'Ayat Pins',
              index: 1,
              onTap: () {
                tabButtonController.bookmarkPageTabCurrentIndex.value = 1;
              },
            ),
            BookmarkPageTabButton(
              title: 'Notes',
              index: 2,
              onTap: () {
                tabButtonController.bookmarkPageTabCurrentIndex.value = 2;
              },
            ),
          ],
        ),
      ),
    );
  }
}
