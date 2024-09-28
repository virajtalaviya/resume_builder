import 'package:flutter/material.dart';
import 'package:resume_builder/components/common_textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fill the form"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Name",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Designation",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Phone no.",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Email",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Address",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "LinkedIn",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Github",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Profile",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Skills",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Languages",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Profile",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Work Exp. (Company Name)",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Duration",
            ),
            CommonTextfield(
              textEditingController: TextEditingController(),
              hintText: "Work Exp. (Description)",
            ),
          ],
        ),
      ),
    );
  }
}
