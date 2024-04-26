import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_button.dart';
import 'package:resume_builder/components/common_text_field.dart';
import 'package:resume_builder/controllers/education_controller.dart';

class EducationDetailsScreen extends StatelessWidget {
  const EducationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EducationController educationController = EducationController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        title: const Text("Education Details", style: TextStyle(color: Colors.white)),
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
                    itemCount: educationController.listOfControllers.length,
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
                                    educationController.listOfControllers.removeAt(index);
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                  ),
                                ),
                              ],
                            ),
                            CommonTextField(
                              textEditingController: educationController.listOfControllers[index].courseTextController,
                              title: "Course",
                              hintText: "Enter Course you enrolled",
                            ),
                            CommonTextField(
                              textEditingController:
                                  educationController.listOfControllers[index].schoolUniTextController,
                              title: "School/University",
                              hintText: "Enter School/University",
                            ),
                            CommonTextField(
                              textEditingController: educationController.listOfControllers[index].gradeTextController,
                              title: "Grade",
                              hintText: "Enter Your Grade",
                            ),
                            CommonTextField(
                              textEditingController: educationController.listOfControllers[index].yearTextController,
                              title: "Year",
                              hintText: "Enter Year of passing",
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
                      educationController.listOfControllers.add(
                        EducationFieldsControllersClass(
                          courseTextController: TextEditingController(),
                          schoolUniTextController: TextEditingController(),
                          gradeTextController: TextEditingController(),
                          yearTextController: TextEditingController(),
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
