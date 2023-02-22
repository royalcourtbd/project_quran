import 'package:project_quran/core/assets/svg_path.dart';
import 'package:project_quran/data/model/surah_model.dart';

List<SurahModel> allSurahList = [
  SurahModel(
    surahNo: 1,
    surahNameEn: 'Al Fatiha',
    surahNameAr: '001',
    nameTranslation: 'The Opening',
    revelationType: SvgPath.icMakka,
    ayah: 7,
  ),
  SurahModel(
    surahNo: 2,
    surahNameEn: 'Al Baqarah',
    surahNameAr: '002',
    nameTranslation: 'The Cow',
    revelationType: SvgPath.icMadina,
    ayah: 286,
  ),
  SurahModel(
    surahNo: 3,
    surahNameEn: 'Ali’Imran',
    surahNameAr: '003',
    nameTranslation: 'Family Of Imran',
    revelationType: SvgPath.icMadina,
    ayah: 200,
  ),
  SurahModel(
    surahNo: 4,
    surahNameEn: 'An Nisa',
    surahNameAr: '004',
    nameTranslation: 'The Women',
    revelationType: SvgPath.icMadina,
    ayah: 176,
  ),
  SurahModel(
    surahNo: 5,
    surahNameEn: 'Al Ma’idah',
    surahNameAr: '005',
    nameTranslation: 'The Table Spread',
    revelationType: SvgPath.icMadina,
    ayah: 120,
  ),
];
