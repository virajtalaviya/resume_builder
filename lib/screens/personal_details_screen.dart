import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_button.dart';
import 'package:resume_builder/components/common_text_field.dart';
import 'package:resume_builder/controllers/personal_details_controller.dart';

class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PersonalDetailsController personalDetailsController = Get.put(PersonalDetailsController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        title: const Text("Personal Details", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Column(
          children: [
            CommonTextField(
              title: "Name",
              hintText: "Your Name",
              textEditingController: personalDetailsController.nameController,
            ),
            CommonTextField(
              title: "Address",
              hintText: "Your Address",
              textEditingController: personalDetailsController.addressController,
            ),
            CommonTextField(
              title: "Email",
              hintText: "Your Email",
              textEditingController: personalDetailsController.emailController,
            ),
            CommonTextField(
              title: "Phone",
              hintText: "Your phone no.",
              textEditingController: personalDetailsController.phoneController,
            ),
            CommonButton(
              title: "Save",
              onTap: () {
                personalDetailsController.validateFields();
              },
            ),
          ],
        ),
      ),
    );
  }
}
