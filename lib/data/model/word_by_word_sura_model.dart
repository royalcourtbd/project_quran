class WordByWordSuraModel {
  int surahNo;
  String surahNameEn;
  String surahNameAr;
  String nameTranslation;
  String nameOftranslation;
  int ayah;
  String revelationType;
  List<String> listOfAyat;
  List<String> listOfTranslation;

  WordByWordSuraModel({
    required this.surahNo,
    required this.surahNameEn,
    required this.surahNameAr,
    required this.nameTranslation,
    required this.nameOftranslation,
    required this.revelationType,
    required this.ayah,
    required this.listOfAyat,
    required this.listOfTranslation,
  });
}
