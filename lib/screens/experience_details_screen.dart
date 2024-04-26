import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExperienceDetailsScreen extends StatelessWidget {
  const ExperienceDetailsScreen({super.key});

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
        title: const Text("Experience Details", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
    );
  }
}
