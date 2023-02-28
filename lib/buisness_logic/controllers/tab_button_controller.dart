import 'package:get/get.dart';

class TabButtonController extends GetxController {
  RxInt tabCurrentIndex = 0.obs;
  RxInt bookmarkPageTabCurrentIndex = 0.obs;
  RxInt pageCurrentIndex = 0.obs;
  RxInt quickAccessCurrentIndex = 0.obs;
  RxString selectItem = ''.obs;
}
