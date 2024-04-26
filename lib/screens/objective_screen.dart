import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObjectiveScreen extends StatelessWidget {
  const ObjectiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        title: const Text("Objective", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
    );
  }
}
