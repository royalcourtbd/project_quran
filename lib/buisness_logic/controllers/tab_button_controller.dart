import 'package:get/get.dart';

class TabButtonController extends GetxController {
  RxInt tabCurrentIndex = 0.obs;
  RxInt bookmarkPageTabCurrentIndex = 0.obs;
  RxInt pageCurrentIndex = 0.obs;
  RxInt quickAccessCurrentIndex = 0.obs;
  RxString selectItem = ''.obs;

  RxBool otherInfoOn = false.obs;
  RxBool displayModeOn = false.obs;
  RxBool chapterOn = false.obs;
  RxBool arabicOn = false.obs;
  RxBool translationOn = false.obs;
  RxBool showNotificaionOn = false.obs;
  RxBool nightModeOn = false.obs;
  RxBool appBarRadiusOn = false.obs;

  void toggleOtherInfo() =>
      otherInfoOn.value = otherInfoOn.value ? false : true;
  void toggleDisplayMode() =>
      displayModeOn.value = displayModeOn.value ? false : true;
  void toggleChapter() => chapterOn.value = chapterOn.value ? false : true;
  void toggleArabic() => arabicOn.value = arabicOn.value ? false : true;
  void toggleTranslation() =>
      translationOn.value = translationOn.value ? false : true;
  void toggleNotification() =>
      showNotificaionOn.value = showNotificaionOn.value ? false : true;
  void toggleNightMode() =>
      nightModeOn.value = nightModeOn.value ? false : true;
  void toggleAppBarRadius() =>
      appBarRadiusOn.value = appBarRadiusOn.value ? false : true;
}
