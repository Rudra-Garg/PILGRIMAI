import '../controller/help_resources_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HelpResourcesScreen.
///
/// This class ensures that the HelpResourcesController is created when the
/// HelpResourcesScreen is first loaded.
class HelpResourcesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpResourcesController());
  }
}
