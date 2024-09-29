import 'package:get/get.dart';
import 'package:resume_builder/screens/home_screen.dart';

class SplashController extends GetxController {
  void initAdministration() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.off(() => const HomeScreen());
  }

  @override
  void onInit() {
    super.onInit();
    initAdministration();
  }
}
