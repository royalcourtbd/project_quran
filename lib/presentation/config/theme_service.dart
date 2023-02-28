import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_quran/presentation/config/quran_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum QuranMajeedProThemes { defaultOne, green, blue, teal, purple, brown, dark }

class ThemeService extends GetxService {
  // late final LocalStorageService _localStorage = locate();

  // late final bool isLanguageEnglish = Get.locale?.languageCode == 'en';

  // late final RxInt currentThemeNumber = 1.obs;
  // late final RxBool isDarkTheme = false.obs;
  // late final Rx<ThemeData> currentTheme = Rx(_defaultTheme());

  // void changeTheme(value) {
  //   currentThemeNumber.value = value;
  //  currentThemeNumber.value = value;
  // }

  // void determineSelectedTheme() {
  //   final int? currentThemeIndex =
  //       _localStorage.getData(Keys.currentThemeIndex);
  //   final bool isDeviceInDarkMode = Get.isPlatformDarkMode;
  //   final bool noDefaultThemeSelected = currentThemeIndex == null;

  //   if (!noDefaultThemeSelected) {
  //     toggleTheme(theme: QuranMajeedProThemes.values[currentThemeIndex]);
  //     return;
  //   }

  //   final int defaultThemeIndex = isDeviceInDarkMode ? 6 : 1;
  //   toggleTheme(theme: QuranMajeedProThemes.values[defaultThemeIndex]);
  // }

  // void toggleDarkTheme({required bool makeDark}) async {
  //   if (makeDark) {
  //     toggleTheme(theme: QuranMajeedProThemes.dark);
  //     return;
  //   }

  //   final int? currentThemeIndex =
  //       _localStorage.getData(Keys.currentThemeIndex);

  //   if (currentThemeIndex == null) {
  //     toggleTheme(theme: QuranMajeedProThemes.green);
  //     return;
  //   }

  //   final bool alreadyDark =
  //       currentThemeIndex == QuranMajeedProThemes.dark.index;

  //   if (alreadyDark) {
  //     toggleTheme(theme: QuranMajeedProThemes.green);
  //     return;
  //   }

  //   toggleTheme(theme: QuranMajeedProThemes.values[currentThemeIndex]);
  // }

  // void toggleTheme({required QuranMajeedProThemes theme}) {
  //   final int themeIndex = QuranMajeedProThemes.values.indexOf(theme);
  //   currentThemeNumber.value = themeIndex;
  //   themeService.currentThemeNumber.value = themeIndex;

  //   final Pair<ThemeMode, ThemeData> themeDataAndMode = _getThemeData(theme);
  //   Get.changeThemeMode(themeDataAndMode.first);
  //   Get.changeTheme(themeDataAndMode.second);

  //   _localStorage.createData(Keys.currentThemeIndex, themeIndex);
  //   final bool isDarkMode = theme == QuranMajeedProThemes.dark;
  //   _localStorage.createData('nightMode', isDarkMode);
  //   this.isDarkTheme.value = isDarkMode;
  //   currentTheme.value = themeDataAndMode.second;
  // }

  // Pair<ThemeMode, ThemeData> _getThemeData(QuranMajeedProThemes theme) {
  //   switch (theme) {
  //     case QuranMajeedProThemes.defaultOne:
  //       return Pair(ThemeMode.light, _defaultTheme());
  //     case QuranMajeedProThemes.green:
  //       return Pair(ThemeMode.light, _greenTheme());
  //     case QuranMajeedProThemes.blue:
  //       return Pair(ThemeMode.light, _blueTheme());
  //     case QuranMajeedProThemes.teal:
  //       return Pair(ThemeMode.light, _tealTheme());
  //     case QuranMajeedProThemes.purple:
  //       return Pair(ThemeMode.light, _purpleTheme());
  //     case QuranMajeedProThemes.brown:
  //       return Pair(ThemeMode.light, _browTheme());
  //     case QuranMajeedProThemes.dark:
  //       return Pair(ThemeMode.dark, _darkTheme());
  //   }
  // }

  late final List<ThemeData> themes = [
    _defaultTheme(),
    greenTheme(),
    _blueTheme(),
    _tealTheme(),
    _purpleTheme(),
    _browTheme(),
    _darkTheme()
  ];

  List<String> listThemeName = [
    "Default", // 1
    "Green", // 2
    "Blue", // 3
    "Teal", // 4
    "Purple", // 5
    "Brown", // 6
    "Dark" // 7
  ];

  ThemeData _darkTheme() {
    return ThemeData(
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Colors.grey),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      bannerTheme:
          const MaterialBannerThemeData(backgroundColor: Color(0xff7F909F)),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xff122337),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: Color(0xff7F909F)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF585868))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3BB06E))),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3BB06E))),
        focusColor: Color(0xff3BB06E),
        labelStyle: TextStyle(color: Color(0xff3BB06E)),
        hoverColor: Color(0xff3BB06E),
        fillColor: Color(0xff223449),
      ),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: const Color(0xff3BB06E),
          selectionColor: const Color(0xff3BB06E).withOpacity(0.5),
          selectionHandleColor: const Color(0xff3BB06E)),
      disabledColor: const Color(0xff7F909F),
      primaryColorLight: Colors.white,
      secondaryHeaderColor: const Color(0xff3BB06E),
      cardColor: const Color(0xff223449),
      fontFamily: GoogleFonts.poppins().fontFamily,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Color(0xff122337),
        modalBackgroundColor: Color(0xff223449),
      ),
      primaryColor: const Color(0xff223449),
      scaffoldBackgroundColor: const Color(0xff223449),
      primaryColorDark: const Color(0xff122337),
      dividerColor: const Color(0xFF585868),
      iconTheme: const IconThemeData(color: Color(0xff7F909F)),
      appBarTheme: const AppBarTheme(
          shadowColor: Color(0xff223449),
          foregroundColor: Colors.white,
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        displayLarge: TextStyle(color: Color(0xff64707A)),
        displayMedium: TextStyle(color: Colors.white),
        displaySmall: TextStyle(color: Colors.white),
        headlineMedium: TextStyle(color: Colors.white),
        headlineSmall: TextStyle(color: Colors.white),
        titleLarge: TextStyle(color: Colors.white),
        titleMedium: TextStyle(color: Colors.white),
        titleSmall: TextStyle(color: Colors.white),
        labelLarge: TextStyle(color: Colors.white),
        bodySmall: TextStyle(color: Colors.white),
        labelSmall: TextStyle(color: Colors.white),
      ),
      colorScheme: const ColorScheme.dark(
              primary: Color(0xff3BB06E), secondary: Color(0xff3BB06E))
          .copyWith(background: const Color(0xff122337)),
    );
  }

  ThemeData _browTheme() {
    return ThemeData(
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Colors.grey),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      bannerTheme:
          const MaterialBannerThemeData(backgroundColor: Color(0xffDBDBDB)),
      dialogTheme: const DialogTheme(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDEDEDE))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff795548))),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff795548))),
        focusColor: Color(0xff795548),
        labelStyle: TextStyle(color: Color(0xff795548)),
        hoverColor: Color(0xff795548),
        fillColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: const Color(0xff795548),
          selectionColor: const Color(0xff795548).withOpacity(0.5),
          selectionHandleColor: const Color(0xff795548)),
      disabledColor: const Color(0xff7F909F),
      dividerColor: const Color(0xffDEDEDE),
      primaryColorLight: Colors.white,
      secondaryHeaderColor: const Color(0xff795548),
      cardColor: Colors.white,
      iconTheme: const IconThemeData(color: Color(0xff808080)),
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: const Color(0xff795548),
      scaffoldBackgroundColor: const Color(0xff795548),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        modalBackgroundColor: Color(0xFFF3F3F3),
      ),
      appBarTheme: const AppBarTheme(
          shadowColor: Colors.white,
          foregroundColor: Color(0xff75331B),
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: Color(0xff64707A)),
        displayMedium: TextStyle(color: Color(0xFF3B3B3B)),
      ),
      colorScheme: const ColorScheme(
          background: Color(0xFFF3F3F3),
          brightness: Brightness.light,
          error: Color(0xFFB00020),
          onBackground: Color(0xFF000000),
          onError: Color(0xFFFFFFFF),
          onPrimary: Color(0xFFFFFFFF),
          onSecondary: Color(0xFF000000),
          onSurface: Color(0xFF000000),
          primary: Color(0xff795548),
          secondary: Color(0xff795548),
          surface: Color(0xFFFFFFFF)),
    );
  }

  ThemeData _purpleTheme() {
    return ThemeData(
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Colors.grey),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      bannerTheme:
          const MaterialBannerThemeData(backgroundColor: Color(0xffDBDBDB)),
      dialogTheme: const DialogTheme(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDEDEDE))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff5E35B1))),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff5E35B1))),
        focusColor: Color(0xff5E35B1),
        labelStyle: TextStyle(color: Color(0xff5E35B1)),
        hoverColor: Color(0xff5E35B1),
        fillColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: const Color(0xff5E35B1),
          selectionColor: const Color(0xff5E35B1).withOpacity(0.5),
          selectionHandleColor: const Color(0xff5E35B1)),
      disabledColor: const Color(0xff7F909F),
      dividerColor: const Color(0xffDEDEDE),
      primaryColorLight: Colors.white,
      secondaryHeaderColor: const Color(0xff5E35B1),
      cardColor: Colors.white,
      iconTheme: const IconThemeData(color: Color(0xff808080)),
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: const Color(0xff5E35B1),
      scaffoldBackgroundColor: const Color(0xff5E35B1),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        modalBackgroundColor: Color(0xFFF3F3F3),
      ),
      appBarTheme: const AppBarTheme(
          shadowColor: Colors.white,
          foregroundColor: Color(0xff3E1F80),
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: Color(0xff64707A)),
        displayMedium: TextStyle(color: Color(0xFF3B3B3B)),
      ),
      colorScheme: const ColorScheme(
          background: Color(0xFFF3F3F3),
          brightness: Brightness.light,
          error: Color(0xFFB00020),
          onBackground: Color(0xFF000000),
          onError: Color(0xFFFFFFFF),
          onPrimary: Color(0xFFFFFFFF),
          onSecondary: Color(0xFF000000),
          onSurface: Color(0xFF000000),
          primary: Color(0xff5E35B1),
          secondary: Color(0xff5E35B1),
          surface: Color(0xFFFFFFFF)),
    );
  }

  ThemeData _tealTheme() {
    return ThemeData(
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Colors.grey),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      bannerTheme:
          const MaterialBannerThemeData(backgroundColor: Color(0xffDBDBDB)),
      dialogTheme: const DialogTheme(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDEDEDE))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff00ACC1))),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff00ACC1))),
        focusColor: Color(0xff00ACC1),
        labelStyle: TextStyle(color: Color(0xff00ACC1)),
        hoverColor: Color(0xff00ACC1),
        fillColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: const Color(0xff00ACC1),
          selectionColor: const Color(0xff00ACC1).withOpacity(0.5),
          selectionHandleColor: const Color(0xff00ACC1)),
      disabledColor: const Color(0xff7F909F),
      dividerColor: const Color(0xffDEDEDE),
      primaryColorLight: Colors.white,
      secondaryHeaderColor: const Color(0xff00ACC1),
      cardColor: Colors.white,
      iconTheme: const IconThemeData(color: Color(0xff808080)),
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: const Color(0xff00ACC1),
      scaffoldBackgroundColor: const Color(0xff00ACC1),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        modalBackgroundColor: Color(0xFFF3F3F3),
      ),
      appBarTheme: const AppBarTheme(
          shadowColor: Colors.white,
          foregroundColor: Color(0xff1B7E8A),
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: Color(0xff64707A)),
        displayMedium: TextStyle(color: Color(0xFF3B3B3B)),
      ),
      colorScheme: const ColorScheme(
          background: Color(0xFFF3F3F3),
          brightness: Brightness.light,
          error: Color(0xFFB00020),
          onBackground: Color(0xFF000000),
          onError: Color(0xFFFFFFFF),
          onPrimary: Color(0xFFFFFFFF),
          onSecondary: Color(0xFF000000),
          onSurface: Color(0xFF000000),
          primary: Color(0xff00ACC1),
          secondary: Color(0xff00ACC1),
          surface: Color(0xFFFFFFFF)),
    );
  }

  ThemeData _blueTheme() {
    return ThemeData(
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Colors.grey),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      bannerTheme:
          const MaterialBannerThemeData(backgroundColor: Color(0xffDBDBDB)),
      dialogTheme: const DialogTheme(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDEDEDE))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff03A9F4))),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff03A9F4))),
        focusColor: Color(0xff03A9F4),
        labelStyle: TextStyle(color: Color(0xff03A9F4)),
        hoverColor: Color(0xff03A9F4),
        fillColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: const Color(0xff03A9F4),
          selectionColor: const Color(0xff03A9F4).withOpacity(0.5),
          selectionHandleColor: const Color(0xff03A9F4)),
      disabledColor: const Color(0xff7F909F),
      dividerColor: const Color(0xffDEDEDE),
      primaryColorLight: Colors.white,
      secondaryHeaderColor: const Color(0xff03A9F4),
      cardColor: Colors.white,
      iconTheme: const IconThemeData(color: Color(0xff808080)),
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: const Color(0xff03A9F4),
      scaffoldBackgroundColor: const Color(0xff03A9F4),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        modalBackgroundColor: Color(0xFFF3F3F3),
      ),
      appBarTheme: const AppBarTheme(
          shadowColor: Colors.white,
          foregroundColor: Color(0xff1B769A),
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: Color(0xff64707A)),
        displayMedium: TextStyle(color: Color(0xFF3B3B3B)),
      ),
      colorScheme: const ColorScheme(
          background: Color(0xFFF3F3F3),
          brightness: Brightness.light,
          error: Color(0xFFB00020),
          onBackground: Color(0xFF000000),
          onError: Color(0xFFFFFFFF),
          onPrimary: Color(0xFFFFFFFF),
          onSecondary: Color(0xFF000000),
          onSurface: Color(0xFF000000),
          primary: Color(0xff03A9F4),
          secondary: Color(0xff03A9F4),
          surface: Color(0xFFFFFFFF)),
    );
  }

  ThemeData greenTheme() {
    return ThemeData(
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Colors.grey),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      bannerTheme:
          const MaterialBannerThemeData(backgroundColor: Color(0xffDBDBDB)),
      dialogTheme: const DialogTheme(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDEDEDE))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3BB06E))),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3BB06E))),
        focusColor: Color(0xff3BB06E),
        labelStyle: TextStyle(color: Color(0xff3BB06E)),
        hoverColor: Color(0xff3BB06E),
        fillColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: const Color(0xff3BB06E),
          selectionColor: const Color(0xff3BB06E).withOpacity(0.5),
          selectionHandleColor: const Color(0xff3BB06E)),
      disabledColor: const Color(0xff7F909F),
      
      
      dividerColor: const Color(0xffDEDEDE),
      primaryColorLight: Colors.white,
      secondaryHeaderColor: const Color(0xff3BB06E),
      cardColor: Colors.white,
      iconTheme: const IconThemeData(color: Color(0xff808080)),
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: QuranColors.greenCrayola,
      scaffoldBackgroundColor: QuranColors.whiteColor,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        modalBackgroundColor: Color(0xFFF3F3F3),
      ),
      appBarTheme: const AppBarTheme(
          shadowColor: Colors.white,
          foregroundColor: Color(0xff477848),
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.white)),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: QuranColors.outerSpace,
          fontWeight: FontWeight.w600,
          fontSize: 12.px,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: GoogleFonts.roboto().fontFamily,
          color: QuranColors.auroMetalSaurus,
          fontSize: 12.px,
        ),
        displayLarge: const TextStyle(color: Color(0xff64707A)),
        displayMedium: const TextStyle(color: Color(0xFF3B3B3B)),
      ),
      colorScheme: const ColorScheme(
        background: Color(0xFFF3F3F3),
        brightness: Brightness.light,
        error: Color(0xFFB00020),
        onBackground: Color(0xFF000000),
        onError: Color(0xFFFFFFFF),
        onPrimary: Color(0xFFFFFFFF),
        onSecondary: Color(0xFF000000),
        onSurface: Color(0xFF000000),
        primary: Color(0xff3BB06E),
        secondary: Color(0xFF0B9D4A),
        surface: Color(0xFFFFFFFF),

        
      ),
    );
  }

  ThemeData _defaultTheme() {
    return ThemeData(
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Colors.grey),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      bannerTheme:
          const MaterialBannerThemeData(backgroundColor: Color(0xffDBDBDB)),
      dialogTheme: const DialogTheme(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDEDEDE))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3BB06E))),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3BB06E))),
        focusColor: Color(0xff3BB06E),
        labelStyle: TextStyle(color: Color(0xff3BB06E)),
        hoverColor: Color(0xff3BB06E),
        fillColor: Colors.white,
      ),
      textSelectionTheme: TextSelectionThemeData(
          cursorColor: const Color(0xff3BB06E),
          selectionColor: const Color(0xff3BB06E).withOpacity(0.5),
          selectionHandleColor: const Color(0xff3BB06E)),
      disabledColor: const Color(0xff7F909F),
      dividerColor: const Color(0xffDEDEDE),
      primaryColorLight: Colors.black,
      secondaryHeaderColor: const Color(0xff3BB06E),
      cardColor: Colors.white,
      iconTheme: const IconThemeData(color: Color(0xff808080)),
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        modalBackgroundColor: Color(0xFFF3F3F3),
      ),
      appBarTheme: const AppBarTheme(
          shadowColor: Colors.white,
          backgroundColor: Color(0xff0B9D4A),
          foregroundColor: Color(0xff477848),
          // color: Color(0xff0B9D4A),
          iconTheme: IconThemeData(color: Color(0xffA7A7A7))),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: Color(0xff64707A)),
        displayMedium: TextStyle(color: Color(0xFF3B3B3B)),
      ),
      colorScheme: const ColorScheme(
          background: Color(0xFFF3F3F3),
          brightness: Brightness.light,
          error: Color(0xFFB00020),
          onBackground: Color(0xFF000000),
          onError: Color(0xFFFFFFFF),
          onPrimary: Color(0xFFFFFFFF),
          onSecondary: Color(0xFF000000),
          onSurface: Color(0xFF000000),
          primary: Colors.white,
          secondary: Color(0xFF0B9D4A),
          surface: Color(0xFFFFFFFF)),
    );
  }
}
