import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonSnackBar {
  static showSnackBar(String message) {
    Get.rawSnackbar(
      message: message,
      margin: const EdgeInsets.all(10),
      borderRadius: 10,
      backgroundColor: Colors.black.withOpacity(0.8),
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
    );
  }
}
