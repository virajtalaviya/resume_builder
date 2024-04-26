import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_snackbar.dart';
import 'package:resume_builder/sqf_helper.dart';

class EducationController extends GetxController {
  RxList<EducationFieldsControllersClass> listOfControllers = <EducationFieldsControllersClass>[
    EducationFieldsControllersClass(
      courseTextController: TextEditingController(),
      schoolUniTextController: TextEditingController(),
      gradeTextController: TextEditingController(),
      yearTextController: TextEditingController(),
    ),
  ].obs;

  void validateFields() async {
    for (int i = 0; i < listOfControllers.length; i++) {
      if (listOfControllers[i].courseTextController.text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter Course at position ${i + 1}");
        return;
      } else if (listOfControllers[i].schoolUniTextController.text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter School/University at position ${i + 1}");
        return;
      } else if (listOfControllers[i].gradeTextController.text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter grade at position ${i + 1}");
        return;
      } else if (listOfControllers[i].yearTextController.text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter year at position ${i + 1}");
        return;
      }
    }

    for (int i = 0; i < listOfControllers.length; i++) {
      await DataBaseManager.addEducationInfo(
        listOfControllers[i].courseTextController.text,
        listOfControllers[i].schoolUniTextController.text,
        listOfControllers[i].gradeTextController.text,
        listOfControllers[i].yearTextController.text,
      );
    }
    CommonSnackBar.showSnackBar("Details saved successfully");
  }
}

class EducationFieldsControllersClass {
  final TextEditingController courseTextController;
  final TextEditingController schoolUniTextController;
  final TextEditingController gradeTextController;
  final TextEditingController yearTextController;

  EducationFieldsControllersClass({
    required this.courseTextController,
    required this.schoolUniTextController,
    required this.gradeTextController,
    required this.yearTextController,
  });
}
