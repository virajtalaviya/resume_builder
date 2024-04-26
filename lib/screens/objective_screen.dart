import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_button.dart';
import 'package:resume_builder/components/common_text_field.dart';
import 'package:resume_builder/controllers/objective_controller.dart';

class ObjectiveScreen extends StatelessWidget {
  const ObjectiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ObjectiveController objectiveController = Get.put(ObjectiveController());
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Column(
          children: [
            CommonTextField(
              textEditingController: objectiveController.objectiveController,
              title: "Objective",
              hintText: "Enter Objective",
            ),
            CommonButton(
              title: "Save",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
