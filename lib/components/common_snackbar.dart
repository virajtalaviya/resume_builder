import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonSnackBar {
  static showSnackBar(String message) {
    Get.rawSnackbar(
      borderRadius: 10,
      title: message,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.grey.shade700,
    );
  }
}
