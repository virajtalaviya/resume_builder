import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_snackbar.dart';
import 'package:resume_builder/sqf_helper.dart';

class ProjectsDetailsController extends GetxController {
  RxList<ProjectsFieldsControllersClass> listOfControllers = <ProjectsFieldsControllersClass>[
    ProjectsFieldsControllersClass(
      titleController: TextEditingController(),
      descriptionController: TextEditingController(),
    ),
  ].obs;

  void validateFields() async {
    for (int i = 0; i < listOfControllers.length; i++) {
      if (listOfControllers[i].titleController.text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter Title at position ${i + 1}");
        return;
      } else if (listOfControllers[i].descriptionController.text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter Start Date at position ${i + 1}");
        return;
      }
    }

    for (int i = 0; i < listOfControllers.length; i++) {
      await DataBaseManager.addProjects(
        listOfControllers[i].titleController.text,
        listOfControllers[i].descriptionController.text,
      );
    }
    CommonSnackBar.showSnackBar("Details saved successfully");
  }
}

class ProjectsFieldsControllersClass {
  final TextEditingController titleController;
  final TextEditingController descriptionController;

  ProjectsFieldsControllersClass({
    required this.titleController,
    required this.descriptionController,
  });
}
