class MemoriesModel {
  String nameOfPlan;
  List<String> totalSurah;
  int remainingDays;
  String completedAyah;
  int completed;
  String optionIconPath;

  List<String> ayat;
  String meaningOfAyat;
  String nameOftranslation;

  MemoriesModel(
      {required this.nameOfPlan,
      required this.totalSurah,
      required this.remainingDays,
      required this.ayat,
      required this.meaningOfAyat,
      required this.nameOftranslation,
      required this.completedAyah,
      required this.completed,
      required this.optionIconPath});
}
