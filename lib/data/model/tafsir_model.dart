class TafsirModel {
  String tafsirLanguage;
  String author;
  bool isActive;

  TafsirModel(
      {required this.author,
      required this.tafsirLanguage,
      this.isActive = true});
}
