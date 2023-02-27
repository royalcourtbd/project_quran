import 'package:flutter/material.dart';
import 'package:project_quran/data/common/custom_appbar.dart';

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
        ],
      ),
    );
  }
}
