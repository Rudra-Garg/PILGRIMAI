import '../controller/the_pilgrim_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ThePilgrimScreen.
///
/// This class ensures that the ThePilgrimController is created when the
/// ThePilgrimScreen is first loaded.
class ThePilgrimBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThePilgrimController());
  }
}
