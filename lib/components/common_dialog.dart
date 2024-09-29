import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonDialog {
  static void showErrorDialog(String title, String message) {
    Get.dialog(
      AlertDialog(
        title: const Icon(
          Icons.error_outline,
          color: Colors.red,
          size: 50,
        ),
        content: SizedBox(
          width: 250,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                message,
                style: const TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Back"),
          ),
        ],
      ),
    );
  }

  static void showSuccessDialog(String title, String message) {
    Get.dialog(
      AlertDialog(
        title: const Icon(
          Icons.done,
          color: Colors.green,
          size: 50,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 15),
            SelectableText(
              message,
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Back"),
          ),
        ],
      ),
    );
  }
}
