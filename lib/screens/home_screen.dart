import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_textfield.dart';
import 'package:resume_builder/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fill the form"),
        actions: [
          IconButton(
            onPressed: () {
              homeController.createPDF();
            },
            icon: const Icon(
              Icons.print,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonTextfield(
                textEditingController: homeController.nameController,
                hintText: "Name",
              ),
              CommonTextfield(
                textEditingController: homeController.designationController,
                hintText: "Designation",
              ),
              CommonTextfield(
                textEditingController: homeController.phoneNoController,
                hintText: "Phone no.",
              ),
              CommonTextfield(
                textEditingController: homeController.emailController,
                hintText: "Email",
              ),
              CommonTextfield(
                textEditingController: homeController.addressController,
                hintText: "Address",
              ),
              CommonTextfield(
                textEditingController: homeController.linkedInController,
                hintText: "LinkedIn",
              ),
              CommonTextfield(
                textEditingController: homeController.githubController,
                hintText: "Github",
              ),
              CommonTextfield(
                textEditingController: homeController.profileController,
                hintText: "Profile",
              ),
              CommonTextfield(
                textEditingController: homeController.skillsController,
                hintText: "Skills",
              ),
              CommonTextfield(
                textEditingController: homeController.languageController,
                hintText: "Languages",
              ),
              CommonTextfield(
                textEditingController: homeController.comapnyNameController,
                hintText: "Work Exp. (Company Name)",
              ),
              CommonTextfield(
                textEditingController: homeController.durationController,
                hintText: "Duration",
              ),
              CommonTextfield(
                textEditingController: homeController.descriptionController,
                hintText: "Work Exp. (Description)",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
