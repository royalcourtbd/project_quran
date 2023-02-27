import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:project_quran/presentation/config/theme_service.dart';
import 'package:project_quran/presentation/main/root.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class Initial extends StatelessWidget {
  Initial({super.key});

  late final ThemeService _themeService = Get.put(ThemeService());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: _themeService.greenTheme(),
          title: 'Quran',
          home: const MainPage(),
        );
      },
    );
  }
}
