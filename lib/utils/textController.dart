import 'package:flutter/material.dart';

mixin MixBusiness {
  // Declare the textControllerList and ddlId maps as final
  final Map<String, TextEditingController> textControllerList = {};
  final Map<String, String> ddlId = {};

  // Method to get or create a TextEditingController for a given key
  TextEditingController? getTextController(String key) {
    // If the controller doesn't exist for the key, create it
    if (!textControllerList.containsKey(key)) {
      textControllerList[key] = TextEditingController();
    }
    return textControllerList[key];
  }

  // Dispose method to clean up controllers when no longer needed
  void disposeControllers() {
    textControllerList.forEach((key, controller) {
      controller.dispose();
    });
    textControllerList.clear();
  }
}
