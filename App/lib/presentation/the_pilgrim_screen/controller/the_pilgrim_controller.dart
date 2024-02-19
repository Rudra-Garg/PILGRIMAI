import 'package:Pilgrim/core/app_export.dart';
import 'package:Pilgrim/presentation/the_pilgrim_screen/models/the_pilgrim_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ThePilgrimScreen.
///
/// This class manages the state of the ThePilgrimScreen, including the
/// current thePilgrimModelObj
class ThePilgrimController extends GetxController {

  TextEditingController messageController = TextEditingController();

  Rx<ThePilgrimModel> thePilgrimModelObj = ThePilgrimModel().obs;

  final userMessages = <String>[].obs;
  final botMessages = <String>[].obs;

  void addUserMessage(String message) {
    userMessages.add(message);
  }
  void addBotMessage(String message) {
    botMessages.add(message);
  }

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
