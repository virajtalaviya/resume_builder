import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_snackbar.dart';
import 'package:resume_builder/sqf_helper.dart';

class ObjectiveController extends GetxController {
  TextEditingController objectiveController = TextEditingController();

  void validateFields() async {
    if (objectiveController.text.isEmpty) {
      CommonSnackBar.showSnackBar("Please enter objective");
      return;
    }

    await DataBaseManager.addObjective(
      objectiveController.text,
    );

    CommonSnackBar.showSnackBar("Details saved successfully");
  }
}
