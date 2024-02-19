import 'package:Pilgrim/core/app_export.dart';
import 'package:Pilgrim/presentation/why_pilgrim_screen/models/why_pilgrim_model.dart';

/// A controller class for the WhyPilgrimScreen.
///
/// This class manages the state of the WhyPilgrimScreen, including the
/// current whyPilgrimModelObj
class WhyPilgrimController extends GetxController {
  Rx<WhyPilgrimModel> whyPilgrimModelObj = WhyPilgrimModel().obs;
}
