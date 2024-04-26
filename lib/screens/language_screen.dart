import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_button.dart';
import 'package:resume_builder/components/common_text_field.dart';
import 'package:resume_builder/controllers/language_controller.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageController languageController = Get.put(LanguageController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        title: const Text("Languages", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Column(
          children: [
            Obx(() {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: languageController.languages.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: CommonTextField(
                          textEditingController: languageController.languages[index],
                          title: "Language ${index + 1}",
                          hintText: "Enter Language ${index + 1}",
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          languageController.languages.removeAt(index);
                        },
                        icon: const Icon(
                          Icons.delete,
                        ),
                      ),
                    ],
                  );
                },
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonButton(
                  title: "Add",
                  onTap: () {
                    languageController.languages.add(TextEditingController());
                  },
                ),
                const SizedBox(width: 10),
                CommonButton(
                  title: "Save",
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
