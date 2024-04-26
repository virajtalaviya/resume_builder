import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_snackbar.dart';
import 'package:resume_builder/sqf_helper.dart';

class PersonalDetailsController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  void validateFields() async {
    if (nameController.text.isEmpty) {
      CommonSnackBar.showSnackBar("Please Enter your name");
    } else if (addressController.text.isEmpty) {
      CommonSnackBar.showSnackBar("Please Enter your Address");
    } else if (emailController.text.isEmpty) {
      CommonSnackBar.showSnackBar("Please Enter your Email");
    } else if (phoneController.text.isEmpty) {
      CommonSnackBar.showSnackBar("Please Enter your Phone No.");
    } else {
      await DataBaseManager.addPersonalInfo(
        nameController.text,
        addressController.text,
        emailController.text,
        phoneController.text,
      );
    }
  }
}
