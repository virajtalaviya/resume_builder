import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_button.dart';
import 'package:resume_builder/components/common_text_field.dart';
import 'package:resume_builder/controllers/skills_controller.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SkillsController skillsController = Get.put(SkillsController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        title: const Text("Skills", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Column(
          children: [
            Obx(() {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: skillsController.skills.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: CommonTextField(
                          textEditingController: skillsController.skills[index],
                          title: "Skill ${index + 1}",
                          hintText: "Enter Skill Yo have",
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          skillsController.skills.removeAt(index);
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
                    skillsController.skills.add(TextEditingController());
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
