class SubjectwiseAtatModel {
  String subjectName;
  String suraName;
  List<String> ayat;
  String meaningOfAyat;
  String nameOftranslation;

  int suraNumber;
  int ayatNumber;

  int totalAyat;

  SubjectwiseAtatModel(
      {required this.ayat,
      required this.ayatNumber,
      required this.meaningOfAyat,
      required this.nameOftranslation,
      required this.subjectName,
      required this.suraName,
      required this.suraNumber,
      required this.totalAyat});
}
