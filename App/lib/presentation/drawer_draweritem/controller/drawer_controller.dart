import 'package:Pilgrim/core/app_export.dart';
import 'package:Pilgrim/presentation/drawer_draweritem/models/drawer_model.dart';

/// A controller class for the DrawerDraweritem.
///
/// This class manages the state of the DrawerDraweritem, including the
/// current drawerModelObj
class DrawerController extends GetxController {
  Rx<DrawerModel> drawerModelObj = DrawerModel().obs;
}