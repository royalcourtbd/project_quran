import 'package:flutter/material.dart';
import 'package:project_quran/presentation/search/widgets/search_section.dart';
import 'package:project_quran/presentation/search/widgets/single_sura_view_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Search(),
            const SectionTitle(
              text: 'Sura',
            ),
            const SingleSuraViewWidget(),
            SizedBox(
              height: 10.px,
            ),
            const SectionTitle(text: 'Ayah')
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.px),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!,
      ),
    );
  }
}
