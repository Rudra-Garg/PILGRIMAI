import '../controller/about_us_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AboutUsScreen.
///
/// This class ensures that the AboutUsController is created when the
/// AboutUsScreen is first loaded.
class AboutUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutUsController());
  }
}
