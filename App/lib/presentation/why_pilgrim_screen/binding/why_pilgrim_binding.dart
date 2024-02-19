import '../controller/why_pilgrim_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhyPilgrimScreen.
///
/// This class ensures that the WhyPilgrimController is created when the
/// WhyPilgrimScreen is first loaded.
class WhyPilgrimBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhyPilgrimController());
  }
}
