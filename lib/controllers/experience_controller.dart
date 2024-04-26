import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_snackbar.dart';
import 'package:resume_builder/sqf_helper.dart';

class ExperienceController extends GetxController {
  RxList<ExperienceTextControllers> listOfControllers = <ExperienceTextControllers>[
    ExperienceTextControllers(
      jobTitleController: TextEditingController(),
      startDateController: TextEditingController(),
      endDateController: TextEditingController(),
      detailsController: TextEditingController(),
    ),
  ].obs;

  void validateFields() async {
    for (int i = 0; i < listOfControllers.length; i++) {
      if (listOfControllers[i].jobTitleController.text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter Job Title at position ${i + 1}");
        return;
      } else if (listOfControllers[i].startDateController.text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter Start Date at position ${i + 1}");
        return;
      } else if (listOfControllers[i].endDateController.text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter End Date at position ${i + 1}");
        return;
      } else if (listOfControllers[i].detailsController.text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter Details at position ${i + 1}");
        return;
      }
    }

    for (int i = 0; i < listOfControllers.length; i++) {
      await DataBaseManager.addExperienceInfo(
        listOfControllers[i].jobTitleController.text,
        listOfControllers[i].startDateController.text,
        listOfControllers[i].endDateController.text,
        listOfControllers[i].detailsController.text,
      );
    }
    CommonSnackBar.showSnackBar("Details saved successfully");
  }
}

class ExperienceTextControllers extends GetxController {
  final TextEditingController jobTitleController;
  final TextEditingController startDateController;
  final TextEditingController endDateController;
  final TextEditingController detailsController;

  ExperienceTextControllers({
    required this.jobTitleController,
    required this.startDateController,
    required this.endDateController,
    required this.detailsController,
  });
}
