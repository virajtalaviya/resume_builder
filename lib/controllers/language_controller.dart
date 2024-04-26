import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_snackbar.dart';
import 'package:resume_builder/sqf_helper.dart';

class LanguageController extends GetxController {
  RxList<TextEditingController> languages = <TextEditingController>[TextEditingController()].obs;

  void validateFields() async {
    for (int i = 0; i < languages.length; i++) {
      if (languages[i].text.isEmpty) {
        CommonSnackBar.showSnackBar("Please enter Course at position ${i + 1}");
        return;
      }
    }

    for (int i = 0; i < languages.length; i++) {
      await DataBaseManager.addLanguages(
        languages[i].text,
      );
    }
    CommonSnackBar.showSnackBar("Details saved successfully");
  }
}
