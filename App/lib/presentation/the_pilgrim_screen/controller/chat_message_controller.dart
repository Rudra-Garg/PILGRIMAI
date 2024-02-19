import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Pilgrim/api_service.dart';

class ChatMessageController extends GetxController {
  final messageController = TextEditingController();
  final isLoading = false.obs;
  final _errorMessage = ''.obs;


  Future<String> sendChatMessage(String prompt) async {
    String response = await getResponse(prompt);
    return response;
  }

  @override
  void onInit() {
    super.onInit();
  }
}