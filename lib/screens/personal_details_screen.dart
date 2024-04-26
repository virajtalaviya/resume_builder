import 'package:flutter/material.dart';
import 'package:resume_builder/components/common_button.dart';
import 'package:resume_builder/components/common_text_field.dart';

class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
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
              textEditingController: TextEditingController(),
            ),
            CommonTextField(
              title: "Address",
              hintText: "Your Address",
              textEditingController: TextEditingController(),
            ),
            CommonTextField(
              title: "Email",
              hintText: "Your Email",
              textEditingController: TextEditingController(),
            ),
            CommonTextField(
              title: "Phone",
              hintText: "Your phone no.",
              textEditingController: TextEditingController(),
            ),
            CommonButton(
              title: "Save",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
