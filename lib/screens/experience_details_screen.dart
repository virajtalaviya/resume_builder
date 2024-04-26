
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_button.dart';
import 'package:resume_builder/components/common_text_field.dart';
import 'package:resume_builder/controllers/experience_controller.dart';

class ExperienceDetailsScreen extends StatelessWidget {
  const ExperienceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ExperienceController experienceController = Get.put(ExperienceController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        title: const Text("Experience Details", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: experienceController.listOfControllers.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Education Details ${index + 1}", style: const TextStyle(fontSize: 16)),
                                IconButton(
                                  onPressed: () {
                                    experienceController.listOfControllers.removeAt(index);
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                  ),
                                ),
                              ],
                            ),
                            CommonTextField(
                              textEditingController: experienceController.listOfControllers[index].jobTitleController,
                              title: "Job Title",
                              hintText: "Job Title",
                            ),
                            CommonTextField(
                              textEditingController: experienceController.listOfControllers[index].startDateController,
                              title: "Start Date",
                              hintText: "Start Date",
                            ),
                            CommonTextField(
                              textEditingController: experienceController.listOfControllers[index].endDateController,
                              title: "End Date",
                              hintText: "End Date",
                            ),
                            CommonTextField(
                              textEditingController: experienceController.listOfControllers[index].detailsController,
                              title: "Details",
                              hintText: "Details",
                            ),
                          ],
                        ),
                      );
                    });
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonButton(
                    title: "Add",
                    onTap: () {
                      experienceController.listOfControllers.add(
                        ExperienceTextControllers(
                          jobTitleController: TextEditingController(),
                          startDateController: TextEditingController(),
                          endDateController: TextEditingController(),
                          detailsController: TextEditingController(),
                        ),
                      );
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
      ),
    );
  }
}