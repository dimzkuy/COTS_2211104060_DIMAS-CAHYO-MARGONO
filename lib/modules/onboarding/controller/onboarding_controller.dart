import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;

  void changePage(int pageIndex) {
    currentPage.value = pageIndex;
  }
}
