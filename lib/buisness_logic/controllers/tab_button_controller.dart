import 'package:get/get.dart';

class TabButtonController extends GetxController {
  RxInt tabCurrentIndex = 0.obs;
  RxInt bookmarkPageTabCurrentIndex = 0.obs;
  RxInt pageCurrentIndex = 0.obs;
  RxInt quickAccessCurrentIndex = 0.obs;
  RxString selectItem = ''.obs;

  RxBool on = false.obs;
  RxBool displayModeOn = false.obs;
  RxBool chapterOn = false.obs;
  RxBool arabicOn = false.obs;

  void toggle() => on.value = on.value ? false : true;
}
