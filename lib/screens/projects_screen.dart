import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectsDetailsScreen extends StatelessWidget {
  const ProjectsDetailsScreen({super.key});

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
        title: const Text("Projects Details", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
    );
  }
}
