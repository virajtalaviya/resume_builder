import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_snackbar.dart';
import 'package:resume_builder/sqf_helper.dart';

class SkillsController extends GetxController{
  RxList<TextEditingController> skills = <TextEditingController>[TextEditingController()].obs;
  void validateFields() async {
    for (int i = 0; i < skills.length; i++) {
      if (skills[i].text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter Course at position ${i + 1}");
        return;
      }
    }

    for (int i = 0; i < skills.length; i++) {
      await DataBaseManager.addSkills(
        skills[i].text,
      );
    }
    CommonSnackBar.showSnackBar("Details saved successfully");
  }
}